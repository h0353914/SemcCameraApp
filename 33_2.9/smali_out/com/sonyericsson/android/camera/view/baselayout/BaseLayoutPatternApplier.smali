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
    .registers 3

    .line 421
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V
    .registers 4

    .line 417
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    invoke-direct {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;-><init>([I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .registers 8

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    .line 40
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureButton:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1d

    if-eq v0, v3, :cond_13

    goto :goto_26

    .line 45
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto :goto_26

    .line 42
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    .line 51
    :goto_26
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->contentView:I

    if-eq v0, v4, :cond_3b

    if-eq v0, v3, :cond_35

    if-eq v0, v2, :cond_2f

    goto :goto_40

    .line 59
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->grayOutContentsViewController()V

    goto :goto_40

    .line 56
    :cond_35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->hideContentsViewController()V

    goto :goto_40

    .line 53
    :cond_3b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->showContentsViewController()V

    .line 65
    :goto_40
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->modeButtonShortcut:I

    if-eq v0, v4, :cond_5d

    if-eq v0, v3, :cond_53

    if-eq v0, v2, :cond_49

    goto :goto_66

    .line 73
    :cond_49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->grayOut()V

    goto :goto_66

    .line 70
    :cond_53
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->hide()V

    goto :goto_66

    .line 67
    :cond_5d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->show()V

    .line 79
    :goto_66
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->mruShortcut:I

    if-eq v0, v4, :cond_83

    if-eq v0, v3, :cond_79

    if-eq v0, v2, :cond_6f

    goto :goto_8c

    .line 87
    :cond_6f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->grayOut()V

    goto :goto_8c

    .line 84
    :cond_79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->hide()V

    goto :goto_8c

    .line 81
    :cond_83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->show()V

    .line 93
    :goto_8c
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureMethodIndicator:I

    if-eq v0, v4, :cond_9d

    if-eq v0, v3, :cond_93

    goto :goto_a6

    .line 98
    :cond_93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_a6

    .line 95
    :cond_9d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 104
    :goto_a6
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->sceneIndicator:I

    if-eq v0, v4, :cond_c0

    if-eq v0, v3, :cond_ad

    goto :goto_d2

    .line 110
    :cond_ad
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->hide()V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_d2

    .line 106
    :cond_c0
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
    :goto_d2
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->geotagIndicator:I

    if-eq v0, v4, :cond_e3

    if-eq v0, v3, :cond_d9

    goto :goto_ec

    .line 122
    :cond_d9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->hide()V

    goto :goto_ec

    .line 119
    :cond_e3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->show()V

    .line 128
    :goto_ec
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->storageIndicator:I

    if-eq v0, v4, :cond_106

    if-eq v0, v3, :cond_f3

    goto :goto_118

    .line 134
    :cond_f3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_118

    .line 130
    :cond_106
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
    :goto_118
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoombar:I

    if-eq v0, v4, :cond_142

    if-eq v0, v3, :cond_138

    const/4 v5, 0x3

    if-eq v0, v5, :cond_12e

    if-eq v0, v2, :cond_124

    goto :goto_14b

    .line 152
    :cond_124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->grayOut()V

    goto :goto_14b

    .line 149
    :cond_12e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideDelayed()V

    goto :goto_14b

    .line 146
    :cond_138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideImmediately()V

    goto :goto_14b

    .line 143
    :cond_142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->show()V

    .line 158
    :goto_14b
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->recordingProgress:I

    if-eq v0, v4, :cond_15c

    if-eq v0, v3, :cond_152

    goto :goto_165

    .line 163
    :cond_152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    goto :goto_165

    .line 160
    :cond_15c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 169
    :goto_165
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->thermalIndicator:I

    if-eq v0, v4, :cond_176

    if-eq v0, v3, :cond_16c

    goto :goto_17f

    .line 174
    :cond_16c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_17f

    .line 171
    :cond_176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 180
    :goto_17f
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->primarySettingShortcut:I

    if-eq v0, v4, :cond_1c1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_1a5

    if-eq v0, v2, :cond_189

    goto :goto_1d3

    .line 191
    :cond_189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->grayOut()V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    goto :goto_1d3

    .line 186
    :cond_1a5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->hide()V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    goto :goto_1d3

    .line 182
    :cond_1c1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->show()V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 199
    :goto_1d3
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->secondaryOnScreensButtons:I

    if-eq v0, v4, :cond_202

    if-eq v0, v3, :cond_1ef

    if-eq v0, v2, :cond_1dc

    goto :goto_214

    .line 209
    :cond_1dc
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->grayOut()V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->grayOut()V

    goto :goto_214

    .line 205
    :cond_1ef
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_214

    .line 201
    :cond_202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 216
    :goto_214
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->batteryIndicator:I

    if-eq v0, v4, :cond_225

    if-eq v0, v3, :cond_21b

    goto :goto_22e

    .line 221
    :cond_21b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->hide()V

    goto :goto_22e

    .line 218
    :cond_225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->show()V

    .line 227
    :goto_22e
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->predictiveCaptureIndicator:I

    if-eq v0, v4, :cond_23f

    if-eq v0, v3, :cond_235

    goto :goto_248

    .line 232
    :cond_235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->hide()V

    goto :goto_248

    .line 229
    :cond_23f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->show()V

    .line 238
    :goto_248
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->isoIndicator:I

    if-eq v0, v4, :cond_259

    if-eq v0, v3, :cond_24f

    goto :goto_262

    .line 243
    :cond_24f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->hide()V

    goto :goto_262

    .line 240
    :cond_259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->show()V

    .line 249
    :goto_262
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoomDial:I

    if-eq v0, v4, :cond_27f

    if-eq v0, v3, :cond_275

    if-eq v0, v2, :cond_26b

    goto :goto_288

    .line 257
    :cond_26b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->grayOut()V

    goto :goto_288

    .line 254
    :cond_275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    goto :goto_288

    .line 251
    :cond_27f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleViewIfNeeded()V

    .line 263
    :goto_288
    iget p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->autoHdrIndicator:I

    if-eq p1, v4, :cond_299

    if-eq p1, v3, :cond_28f

    goto :goto_2a2

    .line 268
    :cond_28f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getAutoHdrIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_2a2

    .line 265
    :cond_299
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getAutoHdrIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 273
    :goto_2a2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->refresh()V

    return-void
.end method

.method public setup(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)V
    .registers 3

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 32
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->setupVisibilities(Z)V

    return-void
.end method
