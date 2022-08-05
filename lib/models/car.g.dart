// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CarAdapter extends TypeAdapter<Car> {
  @override
  final int typeId = 0;

  @override
  Car read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Car(
      id: fields[0] as String,
      name: fields[1] as String,
      year: fields[2] as int,
      shortDescription: fields[3] as String,
      price: fields[4] as int,
      miles: fields[5] as int,
      bodyType: fields[6] as String,
      engineSize: fields[7] as double,
      transmission: fields[8] as String,
      fuelType: fields[9] as String,
      doors: fields[10] as int,
      description: fields[11] as String,
      thumbnail: fields[12] as String,
      pic1: fields[13] as String,
      pic2: fields[14] as String,
      pic3: fields[15] as String,
      pic4: fields[16] as String,
      pic5: fields[17] as String,
      featured: fields[18] as bool?,
      favourite: fields[19] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Car obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.year)
      ..writeByte(3)
      ..write(obj.shortDescription)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.miles)
      ..writeByte(6)
      ..write(obj.bodyType)
      ..writeByte(7)
      ..write(obj.engineSize)
      ..writeByte(8)
      ..write(obj.transmission)
      ..writeByte(9)
      ..write(obj.fuelType)
      ..writeByte(10)
      ..write(obj.doors)
      ..writeByte(11)
      ..write(obj.description)
      ..writeByte(12)
      ..write(obj.thumbnail)
      ..writeByte(13)
      ..write(obj.pic1)
      ..writeByte(14)
      ..write(obj.pic2)
      ..writeByte(15)
      ..write(obj.pic3)
      ..writeByte(16)
      ..write(obj.pic4)
      ..writeByte(17)
      ..write(obj.pic5)
      ..writeByte(18)
      ..write(obj.featured)
      ..writeByte(19)
      ..write(obj.favourite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
