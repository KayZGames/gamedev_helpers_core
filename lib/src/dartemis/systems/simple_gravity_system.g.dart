// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_gravity_system.dart';

// **************************************************************************
// SystemGenerator
// **************************************************************************

abstract class _$SimpleGravitySystem extends EntitySystem {
  late final Mapper<Acceleration> accelerationMapper;
  late final Mapper<Mass> massMapper;
  _$SimpleGravitySystem() : super(Aspect.empty()..allOf([Acceleration, Mass]));
  @override
  void initialize() {
    super.initialize();
    accelerationMapper = Mapper<Acceleration>(world);
    massMapper = Mapper<Mass>(world);
  }

  @override
  void processEntities(Iterable<int> entities) {
    final accelerationMapper = this.accelerationMapper;
    final massMapper = this.massMapper;
    for (final entity in entities) {
      processEntity(entity, accelerationMapper[entity], massMapper[entity]);
    }
  }

  void processEntity(int entity, Acceleration acceleration, Mass mass);
}
