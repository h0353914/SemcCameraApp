.class public final enum Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;
.super Ljava/lang/Enum;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiComponentKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum NIGHT_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum ZOOM_BAR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 271
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "ZOOM_BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 272
    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v3, "SETTING_DIALOG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 273
    new-instance v3, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v5, "REVIEW_WINDOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 274
    new-instance v5, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v7, "OVERLAY_CONTROL_SEEKING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 275
    new-instance v7, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v9, "FLASH_DIALOG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 276
    new-instance v9, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v11, "TUTORIAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 277
    new-instance v11, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v13, "NOTICE_DIALOG"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 278
    new-instance v13, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v15, "FATAL_ALERT_DIALOG"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 279
    new-instance v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v14, "MODE_SELECTOR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 280
    new-instance v14, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v12, "SELF_TIMER_DIALOG"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 281
    new-instance v12, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v10, "ASPECT_RATIO_DIALOG"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 282
    new-instance v10, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v8, "FUSION_MODE_DIALOG"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 283
    new-instance v8, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v6, "VIDEO_HDR_DIALOG"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 284
    new-instance v6, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v4, "HDR_DIALOG"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 285
    new-instance v4, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v2, "NIGHT_MODE_DIALOG"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NIGHT_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

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

    .line 270
    sput-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;
    .registers 2

    .line 270
    const-class v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;
    .registers 1

    .line 270
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    return-object v0
.end method
