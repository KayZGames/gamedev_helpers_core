// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_acceleration_system.dart';

// **************************************************************************
// SystemGenerator
// **************************************************************************

abstract class _$ResetAccelerationSystem extends EntityProcessingSystem {
  Mapper<Acceleration> accelerationMapper;
  _$ResetAccelerationSystem() : super(Aspect.empty()..allOf([Acceleration]));
  @override
  void initialize() {
    super.initialize();
    accelerationMapper = Mapper<Acceleration>(world);
  }
}

abstract class _$SimpleAccelerationSystem extends EntityProcessingSystem {
  Mapper<Acceleration> accelerationMapper;
  Mapper<Velocity> velocityMapper;
  _$SimpleAccelerationSystem()
      : super(Aspect.empty()..allOf([Acceleration, Velocity]));
  @override
  void initialize() {
    super.initialize();
    accelerationMapper = Mapper<Acceleration>(world);
    velocityMapper = Mapper<Velocity>(world);
  }
}
