import StructSample from 0x01

transaction(_new_serial_number: UInt64, _new_name: String, _new_grade: String, _new_maker: String, _gundam_collection_number: UInt64) {

  prepare(acct: AuthAccount) {}

  execute {
    StructSample.add_to_collection(new_serial_number: _new_serial_number, new_name: _new_name, new_grade: _new_grade, new_maker: _new_maker, gundam_collection_number: _gundam_collection_number);
    log("Collection #".concat((_gundam_collection_number.toString())).concat(" - ".concat(_new_name).concat(" is Added to our Collection.")));
  }
}
