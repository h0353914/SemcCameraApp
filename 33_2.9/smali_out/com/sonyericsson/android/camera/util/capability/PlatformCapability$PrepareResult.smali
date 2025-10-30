.class public final enum Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;
.super Ljava/lang/Enum;
.source "PlatformCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrepareResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

.field public static final enum FAIL:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

.field public static final enum PERMISSION_DENIED:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

.field public static final enum SUCCESS:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

.field public static final enum TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 201
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->SUCCESS:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    .line 202
    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    const-string v3, "FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->FAIL:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    .line 203
    new-instance v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    const-string v5, "TIMED_OUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->TIMED_OUT:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    .line 204
    new-instance v5, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    const-string v7, "PERMISSION_DENIED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->PERMISSION_DENIED:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 200
    sput-object v7, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;
    .registers 2

    .line 200
    const-class v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;
    .registers 1

    .line 200
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareResult;

    return-object v0
.end method
