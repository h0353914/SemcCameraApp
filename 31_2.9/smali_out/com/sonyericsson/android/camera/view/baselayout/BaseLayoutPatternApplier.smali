.class public Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;
.super Ljava/lang/Object;
.source "BaseLayoutPatternApplier.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/LayoutPatternApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;
    }
.end annotation


# static fields
.field public static final D:I = 0x3

.field public static final G:I = 0x4

.field public static final H:I = 0x2

.field public static final N:I = 0x0

.field public static final S:I = 0x1


# instance fields
.field private mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    return-void
.end method

.method private set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V
    .registers 5

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    invoke-direct {v1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;-><init>([I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setupVisibilities(Z)V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, 0x12

    if-eqz p1, :cond_c6

    .line 355
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_182

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 356
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1aa

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 358
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1d2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 359
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1fa

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 360
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_222

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 362
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 364
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_24a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 365
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_272

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 366
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_29a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 367
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_2c2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 368
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_2ea

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 369
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_312

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 370
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_33a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 371
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_362

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 372
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_38a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 374
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_3b2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 376
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_3da

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 377
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR_IN_SIDE_TOUCH:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_402

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 379
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->VIDEO_FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v0, v0, [I

    fill-array-data v0, :array_42a

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    goto/16 :goto_181

    .line 382
    :cond_c6
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_452

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 383
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_47a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 385
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_4a2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 386
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_4ca

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 387
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_4f2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 389
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 391
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_51a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 392
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_542

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 393
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_56a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 394
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_592

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 395
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_5ba

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 396
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_5e2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 397
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_60a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 398
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_632

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 399
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_65a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 401
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_682

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 403
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_6aa

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 404
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR_IN_SIDE_TOUCH:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_6d2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 406
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->VIDEO_FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v0, v0, [I

    fill-array-data v0, :array_6fa

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    :goto_181
    return-void

    :array_182
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x3
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_1aa
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x3
        0x2
        0x2
        0x1
        0x1
        0x0
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_1d2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1fa
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_222
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_24a
    .array-data 4
        0x0
        0x4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_272
    .array-data 4
        0x0
        0x4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_29a
    .array-data 4
        0x0
        0x4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x1
        0x2
        0x2
        0x2
        0x4
        0x2
    .end array-data

    :array_2c2
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_2ea
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_312
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x0
        0x2
        0x2
        0x1
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_33a
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_362
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_38a
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
        0x1
        0x1
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_3b2
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_3da
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x2
        0x0
    .end array-data

    :array_402
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x0
        0x2
    .end array-data

    :array_42a
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_452
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_47a
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x3
        0x1
        0x2
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_4a2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_4ca
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4f2
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_51a
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x1
        0x4
        0x4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x2
        0x4
        0x1
        0x4
        0x4
        0x2
    .end array-data

    :array_542
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x1
        0x4
        0x4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x2
        0x4
        0x1
        0x4
        0x4
        0x2
    .end array-data

    :array_56a
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x1
        0x4
        0x4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x2
        0x4
        0x4
        0x2
    .end array-data

    :array_592
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x0
        0x1
    .end array-data

    :array_5ba
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_5e2
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x0
        0x2
        0x2
        0x1
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_60a
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x1
        0x4
        0x4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x2
        0x4
        0x1
        0x4
        0x4
        0x2
    .end array-data

    :array_632
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x0
        0x1
    .end array-data

    :array_65a
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x2
        0x1
        0x1
        0x0
        0x1
        0x2
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_682
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_6aa
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x2
        0x0
    .end array-data

    :array_6d2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_6fa
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .registers 6

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    .line 40
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureButton:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_290

    goto :goto_23

    .line 45
    :pswitch_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto :goto_23

    .line 42
    :pswitch_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    .line 51
    :goto_23
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->contentView:I

    if-eq v0, v2, :cond_37

    packed-switch v0, :pswitch_data_298

    goto :goto_3c

    .line 56
    :pswitch_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->hideContentsViewController()V

    goto :goto_3c

    .line 53
    :pswitch_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->showContentsViewController()V

    goto :goto_3c

    .line 59
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->grayOutContentsViewController()V

    .line 65
    :goto_3c
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->modeButtonShortcut:I

    if-eq v0, v2, :cond_58

    packed-switch v0, :pswitch_data_2a0

    goto :goto_61

    .line 70
    :pswitch_44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->hide()V

    goto :goto_61

    .line 67
    :pswitch_4e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->show()V

    goto :goto_61

    .line 73
    :cond_58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->grayOut()V

    .line 79
    :goto_61
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->mruShortcut:I

    if-eq v0, v2, :cond_7d

    packed-switch v0, :pswitch_data_2a8

    goto :goto_86

    .line 84
    :pswitch_69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->hide()V

    goto :goto_86

    .line 81
    :pswitch_73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->show()V

    goto :goto_86

    .line 87
    :cond_7d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->grayOut()V

    .line 93
    :goto_86
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureMethodIndicator:I

    packed-switch v0, :pswitch_data_2b0

    goto :goto_9f

    .line 98
    :pswitch_8c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_9f

    .line 95
    :pswitch_96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 104
    :goto_9f
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->sceneIndicator:I

    packed-switch v0, :pswitch_data_2b8

    goto :goto_ca

    .line 110
    :pswitch_a5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->hide()V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_ca

    .line 106
    :pswitch_b8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->show()V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 117
    :goto_ca
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->geotagIndicator:I

    packed-switch v0, :pswitch_data_2c0

    goto :goto_e3

    .line 122
    :pswitch_d0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->hide()V

    goto :goto_e3

    .line 119
    :pswitch_da
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->show()V

    .line 128
    :goto_e3
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->storageIndicator:I

    packed-switch v0, :pswitch_data_2c8

    goto :goto_10e

    .line 134
    :pswitch_e9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_10e

    .line 130
    :pswitch_fc
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 141
    :goto_10e
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoombar:I

    packed-switch v0, :pswitch_data_2d0

    goto :goto_13b

    .line 152
    :pswitch_114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->grayOut()V

    goto :goto_13b

    .line 149
    :pswitch_11e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideDelayed()V

    goto :goto_13b

    .line 146
    :pswitch_128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideImmediately()V

    goto :goto_13b

    .line 143
    :pswitch_132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->show()V

    .line 158
    :goto_13b
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->recordingProgress:I

    packed-switch v0, :pswitch_data_2dc

    goto :goto_154

    .line 163
    :pswitch_141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    goto :goto_154

    .line 160
    :pswitch_14b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 169
    :goto_154
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->thermalIndicator:I

    packed-switch v0, :pswitch_data_2e4

    goto :goto_16d

    .line 174
    :pswitch_15a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_16d

    .line 171
    :pswitch_164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 180
    :goto_16d
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->primarySettingShortcut:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1a5

    packed-switch v0, :pswitch_data_2ec

    goto :goto_1c0

    .line 186
    :pswitch_176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->hide()V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    goto :goto_1c0

    .line 182
    :pswitch_192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->show()V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    goto :goto_1c0

    .line 191
    :cond_1a5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->grayOut()V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    .line 199
    :goto_1c0
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->secondaryOnScreensButtons:I

    if-eq v0, v2, :cond_1ee

    packed-switch v0, :pswitch_data_2f4

    goto :goto_200

    .line 205
    :pswitch_1c8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_200

    .line 201
    :pswitch_1db
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_200

    .line 209
    :cond_1ee
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->grayOut()V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->grayOut()V

    .line 216
    :goto_200
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->batteryIndicator:I

    packed-switch v0, :pswitch_data_2fc

    goto :goto_219

    .line 221
    :pswitch_206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->hide()V

    goto :goto_219

    .line 218
    :pswitch_210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->show()V

    .line 227
    :goto_219
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->predictiveCaptureIndicator:I

    packed-switch v0, :pswitch_data_304

    goto :goto_232

    .line 232
    :pswitch_21f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->hide()V

    goto :goto_232

    .line 229
    :pswitch_229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->show()V

    .line 238
    :goto_232
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->isoIndicator:I

    packed-switch v0, :pswitch_data_30c

    goto :goto_24b

    .line 243
    :pswitch_238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->hide()V

    goto :goto_24b

    .line 240
    :pswitch_242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->show()V

    .line 249
    :goto_24b
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoomDial:I

    if-eq v0, v2, :cond_267

    packed-switch v0, :pswitch_data_314

    goto :goto_270

    .line 254
    :pswitch_253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    goto :goto_270

    .line 251
    :pswitch_25d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleViewIfNeeded()V

    goto :goto_270

    .line 257
    :cond_267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->grayOut()V

    .line 263
    :goto_270
    iget p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->autoHdrIndicator:I

    packed-switch p1, :pswitch_data_31c

    goto :goto_289

    .line 268
    :pswitch_276
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getAutoHdrIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_289

    .line 265
    :pswitch_280
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getAutoHdrIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 273
    :goto_289
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->refresh()V

    return-void

    nop

    :pswitch_data_290
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_10
    .end packed-switch

    :pswitch_data_298
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2b
    .end packed-switch

    :pswitch_data_2a0
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_44
    .end packed-switch

    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_73
        :pswitch_69
    .end packed-switch

    :pswitch_data_2b0
    .packed-switch 0x1
        :pswitch_96
        :pswitch_8c
    .end packed-switch

    :pswitch_data_2b8
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_a5
    .end packed-switch

    :pswitch_data_2c0
    .packed-switch 0x1
        :pswitch_da
        :pswitch_d0
    .end packed-switch

    :pswitch_data_2c8
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_e9
    .end packed-switch

    :pswitch_data_2d0
    .packed-switch 0x1
        :pswitch_132
        :pswitch_128
        :pswitch_11e
        :pswitch_114
    .end packed-switch

    :pswitch_data_2dc
    .packed-switch 0x1
        :pswitch_14b
        :pswitch_141
    .end packed-switch

    :pswitch_data_2e4
    .packed-switch 0x1
        :pswitch_164
        :pswitch_15a
    .end packed-switch

    :pswitch_data_2ec
    .packed-switch 0x1
        :pswitch_192
        :pswitch_176
    .end packed-switch

    :pswitch_data_2f4
    .packed-switch 0x1
        :pswitch_1db
        :pswitch_1c8
    .end packed-switch

    :pswitch_data_2fc
    .packed-switch 0x1
        :pswitch_210
        :pswitch_206
    .end packed-switch

    :pswitch_data_304
    .packed-switch 0x1
        :pswitch_229
        :pswitch_21f
    .end packed-switch

    :pswitch_data_30c
    .packed-switch 0x1
        :pswitch_242
        :pswitch_238
    .end packed-switch

    :pswitch_data_314
    .packed-switch 0x1
        :pswitch_25d
        :pswitch_253
    .end packed-switch

    :pswitch_data_31c
    .packed-switch 0x1
        :pswitch_280
        :pswitch_276
    .end packed-switch
.end method

.method public setup(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)V
    .registers 3

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 32
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->setupVisibilities(Z)V

    return-void
.end method
