.class Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

.field final synthetic val$markers:[I

.field final synthetic val$parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

.field final synthetic val$result:Ljava/util/List;

.field final synthetic val$returnAfterFirst:Z

.field final synthetic val$sofnSegments:[I


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[ILjava/util/List;Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[IZ)V
    .registers 7

    .line 137
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$markers:[I

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iput-object p5, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$sofnSegments:[I

    iput-boolean p6, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$returnAfterFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public visitSOS(I[B[B)V
    .registers 4

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const p3, 0xffd9

    if-ne p1, p3, :cond_7

    return p2

    .line 162
    :cond_7
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iget-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$markers:[I

    # invokes: Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->keepMarker(I[I)Z
    invoke-static {p3, p1, p4}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->access$000(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;I[I)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_13

    return p4

    :cond_13
    const p3, 0xffed

    if-ne p1, p3, :cond_26

    .line 168
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    invoke-direct {v0, v1, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;I[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9d

    :cond_26
    const p3, 0xffee

    if-ne p1, p3, :cond_36

    .line 170
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;-><init>(I[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    :cond_36
    const p3, 0xffe2

    if-ne p1, p3, :cond_46

    .line 172
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;-><init>(I[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    :cond_46
    const p3, 0xffe0

    if-ne p1, p3, :cond_56

    .line 174
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;-><init>(I[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    .line 175
    :cond_56
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$sofnSegments:[I

    invoke-static {p3, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p3

    if-ltz p3, :cond_69

    .line 176
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(I[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    :cond_69
    const p3, 0xffdb

    if-ne p1, p3, :cond_79

    .line 178
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;-><init>(I[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    :cond_79
    const p3, 0xffe1

    if-lt p1, p3, :cond_8e

    const p3, 0xffef

    if-gt p1, p3, :cond_8e

    .line 181
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/UnknownSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/UnknownSegment;-><init>(I[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    :cond_8e
    const p3, 0xfffe

    if-ne p1, p3, :cond_9d

    .line 183
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;-><init>(I[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_9d
    :goto_9d
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$returnAfterFirst:Z

    if-eqz p0, :cond_a2

    return p2

    :cond_a2
    return p4
.end method
