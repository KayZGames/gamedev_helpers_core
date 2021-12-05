// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_acceleration_system.dart';

// **************************************************************************
// SystemGenerator
// **************************************************************************

abstract class _$ResetAccelerationSystem extends EntityProcessingSystem {
  late final Mapper<Acceleration> accelerationMapper;
  _$ResetAccelerationSystem() : super(Aspect.empty()..allOf([Acceleration]));
  @override
  void initialize() {
    super.initialize();
    accelerationMapper = Mapper<Acceleration>(world);
  }
}

abstract class _$SimpleAccelerationSystem extends EntityProcessingSystem {
  late final Mapper<Acceleration> accelerationMapper;
  late final Mapper<Velocity> velocityMapper;
  _$SimpleAccelerationSystem()
      : super(Aspect.empty()..allOf([Acceleration, Velocity]));
  @override
  void initialize() {
    super.initialize();
    accelerationMapper = Mapper<Acceleration>(world);
    velocityMapper = Mapper<Velocity>(world);
  }
}
