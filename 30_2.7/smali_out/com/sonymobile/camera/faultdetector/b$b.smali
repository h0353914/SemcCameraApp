.class Lcom/sonymobile/camera/faultdetector/b$b;
.super Lcom/sonymobile/camera/faultdetector/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camera/faultdetector/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:[S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sonymobile/camera/faultdetector/b$b;->a:[S

    return-void

    :array_a
    .array-data 2
        0x52s
        0xd5s
        0x55s
        0x3es
        0x0s
        0x81s
        0x11s
        0xdfs
        0x92s
        0x96s
        0xa1s
        0xd4s
        0x20s
        0x6ds
        0x12s
        0xf4s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/camera/faultdetector/b$a;-><init>(Lcom/sonymobile/camera/faultdetector/b$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/camera/faultdetector/b$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[B
    .registers 2

    sget-object v0, Lcom/sonymobile/camera/faultdetector/b$b;->a:[S

    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/b;->a([S)[B

    move-result-object v0

    return-object v0
.end method
