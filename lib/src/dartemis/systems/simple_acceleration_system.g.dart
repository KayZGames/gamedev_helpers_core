// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_acceleration_system.dart';

// **************************************************************************
// SystemGenerator
// **************************************************************************

abstract class _$ResetAccelerationSystem extends EntitySystem {
  late final Mapper<Acceleration> accelerationMapper;
  _$ResetAccelerationSystem() : super(Aspect.empty()..allOf([Acceleration]));
  @override
  void initialize() {
    super.initialize();
    accelerationMapper = Mapper<Acceleration>(world);
  }

  @override
  void processEntities(Iterable<int> entities) {
    final accelerationMapper = this.accelerationMapper;
    for (final entity in entities) {
      processEntity(entity, accelerationMapper[entity]);
    }
  }

  void processEntity(int entity, Acceleration acceleration);
}

abstract class _$SimpleAccelerationSystem extends EntitySystem {
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

  @override
  void processEntities(Iterable<int> entities) {
    final accelerationMapper = this.accelerationMapper;
    final velocityMapper = this.velocityMapper;
    for (final entity in entities) {
      processEntity(entity, accelerationMapper[entity], velocityMapper[entity]);
    }
  }

  void processEntity(int entity, Acceleration acceleration, Velocity velocity);
}
