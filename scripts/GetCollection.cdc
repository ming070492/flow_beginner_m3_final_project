import StructSample from 0x01

pub fun main(collection_number: UInt64){
  if(collection_number > 0) {
    log(StructSample.gundam_collection[collection_number]!);
  } else {
    log(StructSample.gundam_collection);
  }
}
