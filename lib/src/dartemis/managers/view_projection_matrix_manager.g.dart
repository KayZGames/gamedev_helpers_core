// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_projection_matrix_manager.dart';

// **************************************************************************
// SystemGenerator
// **************************************************************************

abstract class _$ViewProjectionMatrixManager extends Manager {
  late final Mapper<Position> positionMapper;
  late final Mapper<Camera> cameraMapper;
  late final CameraManager cameraManager;
  @override
  void initialize() {
    super.initialize();
    positionMapper = Mapper<Position>(world);
    cameraMapper = Mapper<Camera>(world);
    cameraManager = world.getManager<CameraManager>();
  }
}
