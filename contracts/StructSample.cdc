pub contract StructSample {

    pub var gundam_collection: {UInt64: Gundam};

    pub struct Gundam {
        pub let serial_number: UInt64;
        pub let name: String;
        pub let grade: String;
        pub let maker: String;

        init(_serial_number: UInt64, _name: String, _grade: String, _maker: String) {
            self.serial_number = _serial_number;
            self.name = _name;
            self.grade = _grade;
            self.maker = _maker;
        }
    }

    pub fun add_to_collection(new_serial_number: UInt64, new_name: String, new_grade: String, new_maker: String, gundam_collection_number: UInt64)  {
        let new_collection_item = Gundam(_serial_number: new_serial_number, _name: new_name, _grade: new_grade, _maker: new_maker);
        self.gundam_collection[gundam_collection_number] = new_collection_item;
    }

    init() {
        self.gundam_collection = {};
    }
}