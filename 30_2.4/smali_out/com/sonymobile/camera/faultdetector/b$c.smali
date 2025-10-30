.class Lcom/sonymobile/camera/faultdetector/b$c;
.super Lcom/sonymobile/camera/faultdetector/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camera/faultdetector/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:[S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sonymobile/camera/faultdetector/b$c;->a:[S

    return-void

    :array_a
    .array-data 2
        0x52s
        0xd5s
        0x5bs
        0x92s
        0x0s
        0x81s
        0x11s
        0xdfs
        0xa1s
        0x7ds
        0xc3s
        0xecs
        0x31s
        0x32s
        0xe4s
        0x43s
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

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    sget v0, Lcom/sonymobile/camera/faultdetector/R$raw;->data4:I

    return v0
.end method

.method protected b()[B
    .registers 3

    const-string v0, "com.sonyericsson.sdo.appid.141"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method protected c()[B
    .registers 2

    sget-object v0, Lcom/sonymobile/camera/faultdetector/b$c;->a:[S

    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/b;->a([S)[B

    move-result-object v0

    return-object v0
.end method
