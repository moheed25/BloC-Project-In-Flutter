part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

class WishlistInitialEvent extends WishlistEvent{
  
}


class WishlistRemoveFromWishlistEvent extends WishlistEvent {
  late final ProductDataModel productDataModel;
  WishlistRemoveFromWishlistEvent({
    required this.productDataModel,
  });
}
