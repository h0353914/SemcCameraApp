.class public final Lw;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final a:Lw;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lw;

    .line 1
    invoke-direct {v0}, Lw;-><init>()V

    sput-object v0, Lw;->a:Lw;

    const-class v1, Lw;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lde;-><init>()V

    .line 4
    sget-object v0, Leq;->b:Leq;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_26

    sget-object p1, Lw;->a:Lw;

    return-object p1

    .line 7
    :pswitch_9
    new-instance p1, Lv;

    .line 5
    invoke-direct {p1}, Lv;-><init>()V

    return-object p1

    :pswitch_f
    new-instance p1, Lw;

    .line 6
    invoke-direct {p1}, Lw;-><init>()V

    return-object p1

    .line 0
    :pswitch_15
    sget-object p1, Lw;->a:Lw;

    const-string v0, "\u0001\u0000"

    .line 7
    invoke-static {p1, v0, p2}, Lw;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1e
    return-object p2

    :pswitch_1f
    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_15
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method
