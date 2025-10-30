.class public final Lo;
.super Ldc;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final c:Lo;


# instance fields
.field public a:I

.field public b:I

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lo;

    .line 1
    invoke-direct {v0}, Lo;-><init>()V

    sput-object v0, Lo;->c:Lo;

    const-class v1, Lo;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ldc;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lo;->e:B

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_40

    sget-object p1, Lo;->c:Lo;

    return-object p1

    .line 7
    :pswitch_a
    new-instance p1, Ln;

    .line 4
    invoke-direct {p1}, Ln;-><init>()V

    return-object p1

    :pswitch_10
    new-instance p1, Lo;

    .line 5
    invoke-direct {p1}, Lo;-><init>()V

    return-object p1

    :pswitch_16
    const/4 p1, 0x3

    .line 0
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 6
    invoke-static {}, Lm;->a()Ldh;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Lo;->c:Lo;

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    .line 7
    invoke-static {p2, v0, p1}, Lo;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_31
    if-nez p2, :cond_34

    move v0, v1

    .line 5
    :cond_34
    iput-byte v0, p0, Lo;->e:B

    const/4 p1, 0x0

    return-object p1

    :pswitch_38
    iget-byte p1, p0, Lo;->e:B

    .line 8
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_38
        :pswitch_31
        :pswitch_16
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method
