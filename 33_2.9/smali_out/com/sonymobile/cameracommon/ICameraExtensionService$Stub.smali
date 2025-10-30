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
.field static final TRANSACTION_screenOff:I = 0x2

.field static final TRANSACTION_updateCameraStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sonymobile.cameracommon.ICameraExtensionService"

    .line 28
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

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 40
    instance-of v1, v0, Lcom/sonymobile/cameracommon/ICameraExtensionService;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Lcom/sonymobile/cameracommon/ICameraExtensionService;

    return-object v0

    .line 43
    :cond_13
    new-instance v0, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    const/4 v0, 0x1

    const-string v1, "com.sonymobile.cameracommon.ICameraExtensionService"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_32

    if-eq p1, v0, :cond_23

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 75
    :cond_1c
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;->screenOff()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_31

    .line 68
    :cond_23
    sget-object p1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/sonymobile/cameracommon/ICameraExtensionService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/sonymobile/cameracommon/ICameraExtensionService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 69
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;->updateCameraStatus(Landroid/content/ContentValues;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_31
    return v0

    .line 59
    :cond_32
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
