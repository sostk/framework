.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_dispatchAppVisibility:I = 0x4

.field static final TRANSACTION_dispatchDragEvent:I = 0xa

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x5

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xb

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x9

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x8

.field static final TRANSACTION_dispatchWindowShown:I = 0xe

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x3

.field static final TRANSACTION_onAnimationStarted_11:I = 0xc

.field static final TRANSACTION_onAnimationStopped:I = 0xd

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_windowFocusChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.view.IWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/IWindow;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 33
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :sswitch_1
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/ParcelFileDescriptor;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    const/4 v5, 0x1

    return v5

    :cond_0
    const/16 v32, 0x0

    .local v32, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v32    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v12, 0x1

    .local v12, "_arg6":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/Configuration;

    :goto_8
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    const/4 v5, 0x1

    return v5

    .end local v12    # "_arg6":Z
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/graphics/Rect;
    goto :goto_1

    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :cond_2
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/graphics/Rect;
    goto :goto_2

    .end local v7    # "_arg1":Landroid/graphics/Rect;
    :cond_3
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/graphics/Rect;
    goto :goto_3

    .end local v8    # "_arg2":Landroid/graphics/Rect;
    :cond_4
    const/4 v9, 0x0

    .local v9, "_arg3":Landroid/graphics/Rect;
    goto :goto_4

    .end local v9    # "_arg3":Landroid/graphics/Rect;
    :cond_5
    const/4 v10, 0x0

    .local v10, "_arg4":Landroid/graphics/Rect;
    goto :goto_5

    .end local v10    # "_arg4":Landroid/graphics/Rect;
    :cond_6
    const/4 v11, 0x0

    .local v11, "_arg5":Landroid/graphics/Rect;
    goto :goto_6

    .end local v11    # "_arg5":Landroid/graphics/Rect;
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "_arg6":Z
    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    .local v13, "_arg7":Landroid/content/res/Configuration;
    goto :goto_8

    .end local v12    # "_arg6":Z
    .end local v13    # "_arg7":Landroid/content/res/Configuration;
    :sswitch_3
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->moved(II)V

    const/4 v5, 0x1

    return v5

    .end local v22    # "_arg1":I
    .end local v27    # "_arg0":I
    :sswitch_4
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v29, 0x1

    .local v29, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    const/4 v5, 0x1

    return v5

    .end local v29    # "_arg0":Z
    :cond_9
    const/16 v29, 0x0

    .restart local v29    # "_arg0":Z
    goto :goto_9

    .end local v29    # "_arg0":Z
    :sswitch_5
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    const/4 v5, 0x1

    return v5

    :sswitch_6
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/16 v29, 0x1

    .restart local v29    # "_arg0":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/16 v31, 0x1

    .local v31, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    const/4 v5, 0x1

    return v5

    .end local v29    # "_arg0":Z
    .end local v31    # "_arg1":Z
    :cond_a
    const/16 v29, 0x0

    .restart local v29    # "_arg0":Z
    goto :goto_a

    :cond_b
    const/16 v31, 0x0

    .restart local v31    # "_arg1":Z
    goto :goto_b

    .end local v29    # "_arg0":Z
    .end local v31    # "_arg1":Z
    :sswitch_7
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v21    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .local v15, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .local v16, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .local v17, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .local v18, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v19, 0x1

    .local v19, "_arg4":Z
    :goto_c
    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    const/4 v5, 0x1

    return v5

    .end local v19    # "_arg4":Z
    :cond_c
    const/16 v19, 0x0

    .restart local v19    # "_arg4":Z
    goto :goto_c

    .end local v15    # "_arg0":F
    .end local v16    # "_arg1":F
    .end local v17    # "_arg2":F
    .end local v18    # "_arg3":F
    .end local v19    # "_arg4":Z
    :sswitch_9
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .restart local v22    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Bundle;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v26, 0x1

    .local v26, "_arg5":Z
    :goto_e
    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v26}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    const/4 v5, 0x1

    return v5

    .end local v26    # "_arg5":Z
    :cond_d
    const/16 v25, 0x0

    .local v25, "_arg4":Landroid/os/Bundle;
    goto :goto_d

    .end local v25    # "_arg4":Landroid/os/Bundle;
    :cond_e
    const/16 v26, 0x0

    .restart local v26    # "_arg5":Z
    goto :goto_e

    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":I
    .end local v23    # "_arg2":I
    .end local v24    # "_arg3":I
    .end local v26    # "_arg5":Z
    :sswitch_a
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/DragEvent;

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    const/4 v5, 0x1

    return v5

    :cond_f
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/view/DragEvent;
    goto :goto_f

    .end local v28    # "_arg0":Landroid/view/DragEvent;
    :sswitch_b
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .restart local v22    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    const/4 v5, 0x1

    return v5

    .end local v22    # "_arg1":I
    .end local v23    # "_arg2":I
    .end local v24    # "_arg3":I
    .end local v27    # "_arg0":I
    :sswitch_c
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .restart local v27    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->onAnimationStarted(I)V

    const/4 v5, 0x1

    return v5

    .end local v27    # "_arg0":I
    :sswitch_d
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->onAnimationStopped()V

    const/4 v5, 0x1

    return v5

    :sswitch_e
    const-string v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    const/4 v5, 0x1

    return v5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
