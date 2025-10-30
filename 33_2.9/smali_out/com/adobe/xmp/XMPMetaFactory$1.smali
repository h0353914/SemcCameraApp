.class final Lcom/adobe/xmp/XMPMetaFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/xmp/XMPVersionInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/xmp/XMPMetaFactory;->getVersionInfo()Lcom/adobe/xmp/XMPVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuild()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public getMajor()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    const-string p0, "Adobe XMP Core 5.1.0-jc003"

    return-object p0
.end method

.method public getMicro()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMinor()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isDebug()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "Adobe XMP Core 5.1.0-jc003"

    return-object p0
.end method
