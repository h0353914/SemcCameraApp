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

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    invoke-direct {v1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;-><init>([I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setupVisibilities(Z)V
    .registers 4

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, 0x11

    if-eqz p1, :cond_bc

    .line 318
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_16e

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 319
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_194

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 321
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1ba

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 322
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1e0

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 323
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_206

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 325
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 327
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_22c

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 328
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_252

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 329
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_278

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 330
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_29e

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 331
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_2c4

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 332
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_2ea

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 333
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_310

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 334
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_336

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 335
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_35c

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 337
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_382

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 339
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_3a8

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 340
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR_IN_SIDE_TOUCH:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v0, v0, [I

    fill-array-data v0, :array_3ce

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    goto/16 :goto_16d

    .line 344
    :cond_bc
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_3f4

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 345
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_41a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 347
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_440

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 348
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_466

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 349
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_48c

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 351
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 353
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_4b2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 354
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_4d8

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 355
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_4fe

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 356
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_524

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 357
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_54a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 358
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_570

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 359
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_596

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 360
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_5bc

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 361
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_5e2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 363
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_608

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 365
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_62e

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 366
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR_IN_SIDE_TOUCH:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v0, v0, [I

    fill-array-data v0, :array_654

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    :goto_16d
    return-void

    :array_16e
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
    .end array-data

    :array_194
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
    .end array-data

    :array_1ba
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
    .end array-data

    :array_1e0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
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
        0x2
        0x0
    .end array-data

    :array_206
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
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
        0x2
        0x0
    .end array-data

    :array_22c
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
    .end array-data

    :array_252
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
    .end array-data

    :array_278
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
    .end array-data

    :array_29e
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
    .end array-data

    :array_2c4
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
    .end array-data

    :array_2ea
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
    .end array-data

    :array_310
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
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_336
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
    .end array-data

    :array_35c
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
    .end array-data

    :array_382
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
    .end array-data

    :array_3a8
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
    .end array-data

    :array_3ce
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
    .end array-data

    :array_3f4
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
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_41a
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
    .end array-data

    :array_440
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
    .end array-data

    :array_466
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
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
        0x2
        0x0
    .end array-data

    :array_48c
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
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
        0x2
        0x0
    .end array-data

    :array_4b2
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
    .end array-data

    :array_4d8
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
    .end array-data

    :array_4fe
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
        0x1
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_524
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
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x0
    .end array-data

    :array_54a
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
    .end array-data

    :array_570
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
    .end array-data

    :array_596
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
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_5bc
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
    .end array-data

    :array_5e2
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
    .end array-data

    :array_608
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
    .end array-data

    :array_62e
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
    .end array-data

    :array_654
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
    .end array-data
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    .line 40
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureButton:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_210

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->isMainButtonTouched()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto :goto_42

    .line 45
    :pswitch_25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto :goto_42

    .line 42
    :pswitch_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto :goto_42

    .line 52
    :cond_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    .line 57
    :goto_42
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->contentView:I

    packed-switch v0, :pswitch_data_218

    goto :goto_53

    .line 62
    :pswitch_48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->hideContentsViewController()V

    goto :goto_53

    .line 59
    :pswitch_4e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->showContentsViewController()V

    .line 68
    :goto_53
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->modeButtonShortcut:I

    packed-switch v0, :pswitch_data_220

    goto :goto_6c

    .line 73
    :pswitch_59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->hide()V

    goto :goto_6c

    .line 70
    :pswitch_63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->show()V

    .line 79
    :goto_6c
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->mruShortcut:I

    packed-switch v0, :pswitch_data_228

    goto :goto_85

    .line 84
    :pswitch_72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->hide()V

    goto :goto_85

    .line 81
    :pswitch_7c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->show()V

    .line 90
    :goto_85
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureMethodIndicator:I

    packed-switch v0, :pswitch_data_230

    goto :goto_9e

    .line 95
    :pswitch_8b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_9e

    .line 92
    :pswitch_95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 101
    :goto_9e
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->sceneIndicator:I

    packed-switch v0, :pswitch_data_238

    goto :goto_c9

    .line 107
    :pswitch_a4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->hide()V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_c9

    .line 103
    :pswitch_b7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->show()V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 114
    :goto_c9
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->geotagIndicator:I

    packed-switch v0, :pswitch_data_240

    goto :goto_e2

    .line 119
    :pswitch_cf
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->hide()V

    goto :goto_e2

    .line 116
    :pswitch_d9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->show()V

    .line 125
    :goto_e2
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->storageIndicator:I

    packed-switch v0, :pswitch_data_248

    goto :goto_10d

    .line 131
    :pswitch_e8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_10d

    .line 127
    :pswitch_fb
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 138
    :goto_10d
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoombar:I

    packed-switch v0, :pswitch_data_250

    goto :goto_130

    .line 146
    :pswitch_113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideDelayed()V

    goto :goto_130

    .line 143
    :pswitch_11d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideImmediately()V

    goto :goto_130

    .line 140
    :pswitch_127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->show()V

    .line 152
    :goto_130
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->recordingProgress:I

    packed-switch v0, :pswitch_data_25a

    goto :goto_149

    .line 157
    :pswitch_136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    goto :goto_149

    .line 154
    :pswitch_140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 163
    :goto_149
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->thermalIndicator:I

    packed-switch v0, :pswitch_data_262

    goto :goto_162

    .line 168
    :pswitch_14f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_162

    .line 165
    :pswitch_159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 174
    :goto_162
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->primarySettingShortcut:I

    packed-switch v0, :pswitch_data_26a

    goto :goto_17b

    .line 179
    :pswitch_168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->hide()V

    goto :goto_17b

    .line 176
    :pswitch_172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->show()V

    .line 185
    :goto_17b
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->secondarySettingShortcut:I

    packed-switch v0, :pswitch_data_272

    goto :goto_1a6

    .line 191
    :pswitch_181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_1a6

    .line 187
    :pswitch_194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 198
    :goto_1a6
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->batteryIndicator:I

    packed-switch v0, :pswitch_data_27a

    goto :goto_1bf

    .line 203
    :pswitch_1ac
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->hide()V

    goto :goto_1bf

    .line 200
    :pswitch_1b6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->show()V

    .line 209
    :goto_1bf
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->predictiveCaptureIndicator:I

    packed-switch v0, :pswitch_data_282

    goto :goto_1d8

    .line 214
    :pswitch_1c5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->hide()V

    goto :goto_1d8

    .line 211
    :pswitch_1cf
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->show()V

    .line 220
    :goto_1d8
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->isoIndicator:I

    packed-switch v0, :pswitch_data_28a

    goto :goto_1f1

    .line 225
    :pswitch_1de
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->hide()V

    goto :goto_1f1

    .line 222
    :pswitch_1e8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->show()V

    .line 231
    :goto_1f1
    iget p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoomDial:I

    packed-switch p1, :pswitch_data_292

    goto :goto_20a

    .line 236
    :pswitch_1f7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    goto :goto_20a

    .line 233
    :pswitch_201
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleViewIfNeeded()V

    .line 241
    :goto_20a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->refresh()V

    return-void

    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_25
    .end packed-switch

    :pswitch_data_218
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
    .end packed-switch

    :pswitch_data_220
    .packed-switch 0x1
        :pswitch_63
        :pswitch_59
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_72
    .end packed-switch

    :pswitch_data_230
    .packed-switch 0x1
        :pswitch_95
        :pswitch_8b
    .end packed-switch

    :pswitch_data_238
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_a4
    .end packed-switch

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_cf
    .end packed-switch

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_fb
        :pswitch_e8
    .end packed-switch

    :pswitch_data_250
    .packed-switch 0x1
        :pswitch_127
        :pswitch_11d
        :pswitch_113
    .end packed-switch

    :pswitch_data_25a
    .packed-switch 0x1
        :pswitch_140
        :pswitch_136
    .end packed-switch

    :pswitch_data_262
    .packed-switch 0x1
        :pswitch_159
        :pswitch_14f
    .end packed-switch

    :pswitch_data_26a
    .packed-switch 0x1
        :pswitch_172
        :pswitch_168
    .end packed-switch

    :pswitch_data_272
    .packed-switch 0x1
        :pswitch_194
        :pswitch_181
    .end packed-switch

    :pswitch_data_27a
    .packed-switch 0x1
        :pswitch_1b6
        :pswitch_1ac
    .end packed-switch

    :pswitch_data_282
    .packed-switch 0x1
        :pswitch_1cf
        :pswitch_1c5
    .end packed-switch

    :pswitch_data_28a
    .packed-switch 0x1
        :pswitch_1e8
        :pswitch_1de
    .end packed-switch

    :pswitch_data_292
    .packed-switch 0x1
        :pswitch_201
        :pswitch_1f7
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
