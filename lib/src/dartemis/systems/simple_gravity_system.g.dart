// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_gravity_system.dart';

// **************************************************************************
// SystemGenerator
// **************************************************************************

abstract class _$SimpleGravitySystem extends EntityProcessingSystem {
  late final Mapper<Acceleration> accelerationMapper;
  late final Mapper<Mass> massMapper;
  _$SimpleGravitySystem() : super(Aspect.empty()..allOf([Acceleration, Mass]));
  @override
  void initialize() {
    super.initialize();
    accelerationMapper = Mapper<Acceleration>(world);
    massMapper = Mapper<Mass>(world);
  }
}
