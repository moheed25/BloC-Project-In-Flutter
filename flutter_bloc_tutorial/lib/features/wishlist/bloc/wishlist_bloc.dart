import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_tutorial/data/wishlist_items.dart';
import 'package:flutter_bloc_tutorial/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';
import 'dart:async';
part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistInitialEvent>(wishlistInitailInitialEvent); 
    on<WishlistRemoveFromWishlistEvent>( wishlistRemoveFromWishlistEvent); 

  }



  FutureOr<void> wishlistInitailInitialEvent(
      WishlistInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessState(wishlistItems:  wishlistItems));
  }

  FutureOr<void> wishlistRemoveFromWishlistEvent(
      WishlistRemoveFromWishlistEvent event, Emitter<WishlistState> emit) {
wishlistItems.remove(event.productDataModel);
// emit()
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }
}
