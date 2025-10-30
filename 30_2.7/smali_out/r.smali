.class public final Lr;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final a:Lr;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr;

    .line 1
    invoke-direct {v0}, Lr;-><init>()V

    sput-object v0, Lr;->a:Lr;

    const-class v1, Lr;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lde;-><init>()V

    return-void
.end method

.method public static synthetic a(Lr;)V
    .registers 2

    iget v0, p0, Lr;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lr;->c:I

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_32

    sget-object p1, Lr;->a:Lr;

    return-object p1

    .line 6
    :pswitch_9
    new-instance p1, Lq;

    .line 4
    invoke-direct {p1}, Lq;-><init>()V

    return-object p1

    :pswitch_f
    new-instance p1, Lr;

    .line 5
    invoke-direct {p1}, Lr;-><init>()V

    return-object p1

    :pswitch_15
    const/4 p1, 0x2

    .line 0
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "b"

    aput-object v1, p1, v0

    const-string v0, "c"

    aput-object v0, p1, p2

    sget-object p2, Lr;->a:Lr;

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1004\u0000"

    .line 6
    invoke-static {p2, v0, p1}, Lr;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2a
    const/4 p1, 0x0

    return-object p1

    .line 7
    :pswitch_2c
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2a
        :pswitch_15
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method
