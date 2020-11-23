// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_projection_matrix_manager.dart';

// **************************************************************************
// SystemGenerator
// **************************************************************************

abstract class _$ViewProjectionMatrixManager extends Manager {
  Mapper<Position> positionMapper;
  Mapper<Camera> cameraMapper;
  CameraManager cameraManager;
  @override
  void initialize() {
    super.initialize();
    positionMapper = Mapper<Position>(world);
    cameraMapper = Mapper<Camera>(world);
    cameraManager = world.getManager<CameraManager>();
  }
}
