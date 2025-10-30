.class public final enum Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
.super Ljava/lang/Enum;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum HDR_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum HDR_VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum HIGH_FRAME_RATE_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum STANDARD_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum SUPER_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum SUPER_SLOW_SHOT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 51
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 52
    new-instance v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v3, "PHOTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 53
    new-instance v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 54
    new-instance v5, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v7, "BURST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 55
    new-instance v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v9, "PREDICTIVE_CAPTURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 56
    new-instance v9, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v11, "TIME_SHIFT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 57
    new-instance v11, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v13, "TIME_SHIFT_VIDEO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 58
    new-instance v13, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v15, "TIME_SHIFT_VIDEO_120F"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 59
    new-instance v15, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v14, "VIDEO_4K"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 60
    new-instance v14, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v12, "SUPER_SLOW_MOTION_VIDEO"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 61
    new-instance v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v10, "SUPER_SLOW_SHOT_VIDEO"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_SHOT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 62
    new-instance v10, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v8, "STANDARD_SLOW_MOTION_VIDEO"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->STANDARD_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 63
    new-instance v8, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v6, "HIGH_FRAME_RATE_VIDEO"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HIGH_FRAME_RATE_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 64
    new-instance v6, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v4, "HDR_VIDEO"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 65
    new-instance v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v2, "HDR_VIDEO_4K"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 50
    sput-object v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->$VALUES:[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .registers 2

    .line 50
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .registers 1

    .line 50
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->$VALUES:[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object v0
.end method
