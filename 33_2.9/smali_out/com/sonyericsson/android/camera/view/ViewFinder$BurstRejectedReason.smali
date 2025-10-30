.class public final enum Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;
.super Ljava/lang/Enum;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BurstRejectedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

.field public static final enum BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

.field public static final enum CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

.field public static final enum CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

.field public static final enum CANNOT_BURST_DUE_TO_NIGHT_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

.field public static final enum CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

.field public static final enum CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 241
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->NONE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    .line 245
    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    const-string v3, "CANNOT_BURST_IN_DARK_CONDITION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    .line 249
    new-instance v3, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    const-string v5, "CANNOT_BURST_USING_FRONT_CAMERA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    .line 253
    new-instance v5, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    const-string v7, "CANNOT_BURST_DUE_TO_FUSION_MODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    .line 258
    new-instance v7, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    const-string v9, "BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    .line 262
    new-instance v9, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    const-string v11, "CANNOT_BURST_DUE_TO_BOKEH_MODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    .line 266
    new-instance v11, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    const-string v13, "CANNOT_BURST_DUE_TO_NIGHT_MODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_NIGHT_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 240
    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;
    .registers 2

    .line 240
    const-class v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;
    .registers 1

    .line 240
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    return-object v0
.end method
