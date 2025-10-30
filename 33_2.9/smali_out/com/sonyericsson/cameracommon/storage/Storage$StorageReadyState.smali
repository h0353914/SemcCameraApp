.class public final enum Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;
.super Ljava/lang/Enum;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageReadyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum INIT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 90
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->INIT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 91
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v3, "PREPARING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 92
    new-instance v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v5, "ACCESSIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 93
    new-instance v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v7, "SUSPENDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 94
    new-instance v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v9, "COMPLETED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 89
    sput-object v9, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;
    .registers 2

    .line 89
    const-class v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;
    .registers 1

    .line 89
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    return-object v0
.end method
