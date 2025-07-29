#[repr(C)]
#[derive(Copy, Clone)]
pub struct DataPtr {
  ptr: *const u8,
  len: usize
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct DataPtrArray {
  ptr: *const DataPtr,
  len: usize
}

#[no_mangle]
pub unsafe extern "C" fn free_data_ptr(data_ptr: &mut DataPtr) {
  data_ptr.free();
}

#[no_mangle]
pub unsafe extern "C" fn free_data_ptr_array(array: &mut DataPtrArray) {
  array.free();
}

impl DataPtr {
  pub unsafe fn rust_ref(&self) -> &[u8] {
    std::slice::from_raw_parts(self.ptr, self.len)
  }

  pub unsafe fn free(&mut self) {
    if self.ptr.is_null() {
      return;
    }
    let _ = Vec::from_raw_parts(self.ptr as *mut u8, self.len, self.len);
    self.ptr = std::ptr::null();
  }
}

impl DataPtrArray {
  pub unsafe fn rust_ref(&self) -> &[DataPtr] {
    std::slice::from_raw_parts(self.ptr, self.len)
  }

  pub unsafe fn free(&mut self) {
    if self.ptr.is_null() {
      return;
    }
    
    // Free each DataPtr in the array
    let slice = std::slice::from_raw_parts(self.ptr, self.len);
    for data_ptr in slice {
      let mut mutable_ptr = *data_ptr;
      mutable_ptr.free();
    }
    
    // Free the array itself
    let _ = Vec::from_raw_parts(self.ptr as *mut DataPtr, self.len, self.len);
    self.ptr = std::ptr::null();
  }
}

impl From<&[u8]> for DataPtr {
  fn from(data: &[u8]) -> Self {
    Vec::from(data).into()
  }
}

impl From<Vec<u8>> for DataPtr {
  fn from(data: Vec<u8>) -> Self {
    let len = data.len();
    let mut slice = data.into_boxed_slice();
    let out = slice.as_mut_ptr();
    std::mem::forget(slice);
    Self { ptr: out, len: len }
  }
}

impl From<Vec<Vec<u8>>> for DataPtrArray {
  fn from(data_vec: Vec<Vec<u8>>) -> Self {
    let data_ptrs: Vec<DataPtr> = data_vec.into_iter().map(DataPtr::from).collect();
    data_ptrs.into()
  }
}

impl From<Vec<DataPtr>> for DataPtrArray {
  fn from(data_ptrs: Vec<DataPtr>) -> Self {
    let len = data_ptrs.len();
    let mut boxed_slice = data_ptrs.into_boxed_slice();
    let out = boxed_slice.as_mut_ptr();
    std::mem::forget(boxed_slice);
    Self { ptr: out, len: len }
  }
}

pub trait IntoOptionDataPtr {
  fn into_option(self) -> Option<DataPtr>;
}

impl <T:From<T>> IntoOptionDataPtr for Option<T> where DataPtr: From<T>{
  fn into_option(self) -> Option<DataPtr> {
    match self {
      Some(data) => Some(data.into()),
      None => None
    }
  }
}

#[no_mangle]
pub unsafe extern "C" fn dataptr_free(data: &mut DataPtr) {
  data.free();
}
