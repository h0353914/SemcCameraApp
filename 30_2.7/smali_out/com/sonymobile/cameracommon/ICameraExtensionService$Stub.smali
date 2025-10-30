.class public abstract Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;
.super Landroid/os/Binder;
.source "ICameraExtensionService.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/ICameraExtensionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/ICameraExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.cameracommon.ICameraExtensionService"

.field static final TRANSACTION_screenOff:I = 0x2

.field static final TRANSACTION_updateCameraStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sonymobile.cameracommon.ICameraExtensionService"

    .line 31
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/cameracommon/ICameraExtensionService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.sonymobile.cameracommon.ICameraExtensionService"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 43
    instance-of v1, v0, Lcom/sonymobile/cameracommon/ICameraExtensionService;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Lcom/sonymobile/cameracommon/ICameraExtensionService;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/sonymobile/cameracommon/ICameraExtensionService;
    .registers 1

    .line 165
    sget-object v0, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;->sDefaultImpl:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/sonymobile/cameracommon/ICameraExtensionService;)Z
    .registers 2

    .line 155
    sget-object v0, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;->sDefaultImpl:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    .line 159
    sput-object p0, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;->sDefaultImpl:Lcom/sonymobile/cameracommon/ICameraExtensionService;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 156
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sonymobile.cameracommon.ICameraExtensionService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_34

    packed-switch p1, :pswitch_data_38

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 78
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;->screenOff()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 64
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2c

    .line 67
    sget-object p1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    .line 72
    :goto_2d
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;->updateCameraStatus(Landroid/content/ContentValues;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 59
    :cond_34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_10
    .end packed-switch
.end method
