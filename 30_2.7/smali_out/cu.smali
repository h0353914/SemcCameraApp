.class public final Lcu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:Lcu;


# instance fields
.field final a:Lfc;

.field public b:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcu;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lcu;-><init>([B)V

    sput-object v0, Lcu;->c:Lcu;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 3
    invoke-static {v0}, Lfc;->a(I)Lfc;

    move-result-object v0

    iput-object v0, p0, Lcu;->a:Lfc;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 2

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lfc;->a(I)Lfc;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcu;->a:Lfc;

    .line 6
    invoke-virtual {p0}, Lcu;->b()V

    .line 7
    invoke-virtual {p0}, Lcu;->b()V

    return-void
.end method

.method static a(Lfy;ILjava/lang/Object;)I
    .registers 4

    .line 21
    invoke-static {p1}, Lcn;->a(I)I

    move-result p1

    .line 22
    sget-object v0, Lfy;->j:Lfy;

    if-ne p0, v0, :cond_f

    .line 23
    move-object v0, p2

    check-cast v0, Leh;

    invoke-static {v0}, Ldj;->a(Leh;)Z

    add-int/2addr p1, p1

    .line 24
    :cond_f
    invoke-static {p0, p2}, Lcu;->a(Lfy;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static a(Lfy;Ljava/lang/Object;)I
    .registers 4

    .line 25
    sget-object v0, Lfy;->a:Lfy;

    sget-object v0, Lfz;->a:Lfz;

    invoke-virtual {p0}, Lfy;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_e8

    .line 53
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :pswitch_16
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcn;->b(J)I

    move-result p0

    return p0

    .line 27
    :pswitch_21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcn;->d(I)I

    move-result p0

    return p0

    .line 28
    :pswitch_2c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-boolean p0, Lcn;->a:Z

    return v1

    .line 29
    :pswitch_34
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-boolean p0, Lcn;->a:Z

    return v0

    .line 30
    :pswitch_3c
    instance-of p0, p1, Ldg;

    if-eqz p0, :cond_4b

    .line 31
    check-cast p1, Ldg;

    invoke-interface {p1}, Ldg;->a()I

    move-result p0

    .line 32
    invoke-static {p0}, Lcn;->b(I)I

    move-result p0

    return p0

    .line 33
    :cond_4b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 34
    invoke-static {p0}, Lcn;->b(I)I

    move-result p0

    return p0

    .line 35
    :pswitch_56
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcn;->c(I)I

    move-result p0

    return p0

    .line 36
    :pswitch_61
    instance-of p0, p1, Lck;

    if-eqz p0, :cond_6c

    .line 37
    check-cast p1, Lck;

    invoke-static {p1}, Lcn;->a(Lck;)I

    move-result p0

    return p0

    .line 38
    :cond_6c
    check-cast p1, [B

    invoke-static {p1}, Lcn;->b([B)I

    move-result p0

    return p0

    .line 39
    :pswitch_73
    instance-of p0, p1, Ldp;

    if-eqz p0, :cond_7e

    .line 40
    check-cast p1, Ldp;

    invoke-static {p1}, Lcn;->a(Ldq;)I

    move-result p0

    return p0

    .line 41
    :cond_7e
    check-cast p1, Leh;

    invoke-static {p1}, Lcn;->a(Leh;)I

    move-result p0

    return p0

    .line 42
    :pswitch_85
    check-cast p1, Leh;

    invoke-static {p1}, Lcn;->c(Leh;)I

    move-result p0

    return p0

    .line 43
    :pswitch_8c
    instance-of p0, p1, Lck;

    if-eqz p0, :cond_97

    .line 44
    check-cast p1, Lck;

    invoke-static {p1}, Lcn;->a(Lck;)I

    move-result p0

    return p0

    .line 45
    :cond_97
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn;->a(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 46
    :pswitch_9e
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-boolean p0, Lcn;->a:Z

    const/4 p0, 0x1

    return p0

    .line 47
    :pswitch_a7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-boolean p0, Lcn;->a:Z

    return v0

    .line 48
    :pswitch_af
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-boolean p0, Lcn;->a:Z

    return v1

    .line 49
    :pswitch_b7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcn;->b(I)I

    move-result p0

    return p0

    .line 50
    :pswitch_c2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcn;->a(J)I

    move-result p0

    return p0

    .line 51
    :pswitch_cd
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 52
    invoke-static {p0, p1}, Lcn;->a(J)I

    move-result p0

    return p0

    .line 53
    :pswitch_d8
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    sget-boolean p0, Lcn;->a:Z

    return v0

    .line 54
    :pswitch_e0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    sget-boolean p0, Lcn;->a:Z

    return v1

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_d8
        :pswitch_cd
        :pswitch_c2
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
        :pswitch_9e
        :pswitch_8c
        :pswitch_85
        :pswitch_73
        :pswitch_61
        :pswitch_56
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_21
        :pswitch_16
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 15
    instance-of v0, p0, Lem;

    if-eqz v0, :cond_b

    .line 16
    check-cast p0, Lem;

    invoke-interface {p0}, Lem;->d()Lem;

    move-result-object p0

    return-object p0

    .line 17
    :cond_b
    instance-of v0, p0, [B

    if-eqz v0, :cond_19

    .line 18
    check-cast p0, [B

    .line 19
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 20
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_19
    return-object p0
.end method

.method static a(Lcn;ILjava/lang/Object;)V
    .registers 4

    .line 134
    sget-object v0, Lfy;->j:Lfy;

    if-nez v0, :cond_15

    .line 135
    check-cast p2, Leh;

    invoke-static {p2}, Ldj;->a(Leh;)Z

    const/4 v0, 0x3

    .line 136
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    .line 137
    invoke-virtual {p0, p2}, Lcn;->b(Leh;)V

    const/4 p2, 0x4

    .line 138
    invoke-virtual {p0, p1, p2}, Lcn;->f(II)V

    return-void

    :cond_15
    const/4 p0, 0x0

    .line 139
    throw p0
.end method

.method public static b(Ldd;Ljava/lang/Object;)I
    .registers 3

    .line 56
    invoke-virtual {p0}, Ldd;->b()Lfy;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Ldd;->a()I

    move-result p0

    .line 58
    invoke-static {v0, p0, p1}, Lcu;->a(Lfy;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final b(Lfy;Ljava/lang/Object;)V
    .registers 3

    .line 122
    invoke-static {p1}, Ldj;->a(Ljava/lang/Object;)V

    .line 123
    sget-object v0, Lfy;->a:Lfy;

    sget-object v0, Lfz;->a:Lfz;

    iget-object p0, p0, Lfy;->s:Lfz;

    invoke-virtual {p0}, Lfz;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_48

    goto :goto_40

    .line 124
    :pswitch_11
    instance-of p0, p1, Leh;

    if-nez p0, :cond_3f

    instance-of p0, p1, Ldp;

    if-eqz p0, :cond_40

    goto :goto_3f

    .line 125
    :pswitch_1a
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3f

    instance-of p0, p1, Ldg;

    if-eqz p0, :cond_40

    goto :goto_3f

    .line 126
    :pswitch_23
    instance-of p0, p1, Lck;

    if-nez p0, :cond_3f

    instance-of p0, p1, [B

    if-eqz p0, :cond_40

    goto :goto_3f

    .line 127
    :pswitch_2c
    instance-of p0, p1, Ljava/lang/String;

    goto :goto_3d

    .line 128
    :pswitch_2f
    instance-of p0, p1, Ljava/lang/Boolean;

    goto :goto_3d

    .line 129
    :pswitch_32
    instance-of p0, p1, Ljava/lang/Double;

    goto :goto_3d

    .line 130
    :pswitch_35
    instance-of p0, p1, Ljava/lang/Float;

    goto :goto_3d

    .line 131
    :pswitch_38
    instance-of p0, p1, Ljava/lang/Long;

    goto :goto_3d

    .line 132
    :pswitch_3b
    instance-of p0, p1, Ljava/lang/Integer;

    :goto_3d
    if-eqz p0, :cond_40

    :cond_3f
    :goto_3f
    return-void

    .line 124
    :cond_40
    :goto_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_11
    .end packed-switch
.end method

.method private static c(Ljava/util/Map$Entry;)Z
    .registers 4

    .line 84
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    .line 85
    invoke-virtual {v0}, Ldd;->c()Lfz;

    move-result-object v0

    sget-object v1, Lfz;->i:Lfz;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2e

    .line 86
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 87
    instance-of v0, p0, Leh;

    if-eqz v0, :cond_21

    .line 88
    check-cast p0, Leh;

    invoke-interface {p0}, Leh;->c()Z

    move-result p0

    if-nez p0, :cond_2e

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_21
    instance-of p0, p0, Ldp;

    if-eqz p0, :cond_26

    return v2

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    .line 90
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    return v2
.end method


# virtual methods
.method public final a(Ldd;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcu;->a:Lfc;

    .line 62
    invoke-virtual {v0, p1}, Lfc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 63
    instance-of v0, p1, Ldp;

    if-nez v0, :cond_b

    return-object p1

    .line 64
    :cond_b
    check-cast p1, Ldp;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ldd;Ljava/lang/Object;)V
    .registers 4

    .line 119
    invoke-virtual {p1}, Ldd;->b()Lfy;

    move-result-object v0

    invoke-static {v0, p2}, Lcu;->b(Lfy;Ljava/lang/Object;)V

    .line 120
    instance-of v0, p2, Ldp;

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcu;->d:Z

    .line 120
    :goto_f
    iget-object v0, p0, Lcu;->a:Lfc;

    .line 121
    invoke-virtual {v0, p1, p2}, Lfc;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map$Entry;)V
    .registers 5

    .line 104
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    .line 105
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 106
    instance-of v1, p1, Ldp;

    if-nez v1, :cond_53

    .line 107
    invoke-virtual {v0}, Ldd;->c()Lfz;

    move-result-object v1

    sget-object v2, Lfz;->i:Lfz;

    if-ne v1, v2, :cond_49

    .line 108
    invoke-virtual {p0, v0}, Lcu;->a(Ldd;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcu;->a:Lfc;

    .line 109
    invoke-static {p1}, Lcu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lfc;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 110
    :cond_26
    instance-of v2, v1, Lem;

    if-eqz v2, :cond_33

    .line 111
    check-cast v1, Lem;

    check-cast p1, Lem;

    .line 112
    invoke-static {}, Ldd;->d()Lem;

    move-result-object p1

    goto :goto_43

    .line 113
    :cond_33
    check-cast v1, Leh;

    .line 114
    invoke-interface {v1}, Leh;->b()Leg;

    move-result-object v1

    check-cast p1, Leh;

    invoke-static {v1, p1}, Ldd;->a(Leg;Leh;)Leg;

    move-result-object p1

    .line 115
    invoke-interface {p1}, Leg;->h()Leh;

    move-result-object p1

    .line 112
    :goto_43
    iget-object v1, p0, Lcu;->a:Lfc;

    .line 116
    invoke-virtual {v1, v0, p1}, Lfc;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 118
    :cond_49
    iget-object v1, p0, Lcu;->a:Lfc;

    .line 117
    invoke-static {p1}, Lcu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lfc;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 118
    :cond_53
    check-cast p1, Ldp;

    const/4 p1, 0x0

    throw p1
.end method

.method final a()Z
    .registers 2

    iget-object v0, p0, Lcu;->a:Lfc;

    .line 79
    invoke-virtual {v0}, Lfc;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/util/Map$Entry;)I
    .registers 7

    .line 65
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    .line 66
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ldd;->c()Lfz;

    move-result-object v2

    sget-object v3, Lfz;->i:Lfz;

    if-eq v2, v3, :cond_17

    .line 68
    invoke-static {v0, v1}, Lcu;->b(Ldd;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 69
    :cond_17
    instance-of v0, v1, Ldp;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3a

    .line 70
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldd;

    invoke-virtual {p1}, Ldd;->a()I

    move-result p1

    check-cast v1, Ldp;

    .line 71
    invoke-static {v4}, Lcn;->a(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 72
    invoke-static {v3, p1}, Lcn;->c(II)I

    move-result p1

    add-int/2addr v0, p1

    .line 73
    invoke-static {v2, v1}, Lcn;->a(ILdq;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 74
    :cond_3a
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldd;

    invoke-virtual {p1}, Ldd;->a()I

    move-result p1

    check-cast v1, Leh;

    .line 75
    invoke-static {v4}, Lcn;->a(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 76
    invoke-static {v3, p1}, Lcn;->c(II)I

    move-result p1

    add-int/2addr v0, p1

    .line 77
    invoke-static {v2}, Lcn;->a(I)I

    move-result p1

    invoke-static {v1}, Lcn;->a(Leh;)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public final b()V
    .registers 4

    iget-boolean v0, p0, Lcu;->b:Z

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcu;->a:Lfc;

    iget-boolean v1, v0, Lfc;->c:Z

    if-eqz v1, :cond_b

    goto :goto_3a

    :cond_b
    const/4 v1, 0x0

    .line 93
    :goto_c
    invoke-virtual {v0}, Lfc;->a()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 94
    invoke-virtual {v0, v1}, Lfc;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 96
    :cond_1f
    invoke-virtual {v0}, Lfc;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd;

    goto :goto_27

    .line 0
    :cond_3a
    :goto_3a
    iget-boolean v1, v0, Lfc;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6b

    iget-object v1, v0, Lfc;->b:Ljava/util/Map;

    .line 98
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_52

    .line 100
    :cond_4c
    iget-object v1, v0, Lfc;->b:Ljava/util/Map;

    .line 101
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 99
    :goto_52
    iput-object v1, v0, Lfc;->b:Ljava/util/Map;

    iget-object v1, v0, Lfc;->d:Ljava/util/Map;

    .line 102
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_63

    .line 103
    iget-object v1, v0, Lfc;->d:Ljava/util/Map;

    .line 100
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_67

    .line 103
    :cond_63
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 100
    :goto_67
    iput-object v1, v0, Lfc;->d:Ljava/util/Map;

    iput-boolean v2, v0, Lfc;->c:Z

    :cond_6b
    iput-boolean v2, p0, Lcu;->b:Z

    return-void

    :cond_6e
    return-void
.end method

.method public final c()Lcu;
    .registers 5

    new-instance v0, Lcu;

    .line 8
    invoke-direct {v0}, Lcu;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcu;->a:Lfc;

    .line 9
    invoke-virtual {v2}, Lfc;->a()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcu;->a:Lfc;

    .line 10
    invoke-virtual {v2, v1}, Lfc;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcu;->a(Ldd;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    iget-object v1, p0, Lcu;->a:Lfc;

    .line 12
    invoke-virtual {v1}, Lfc;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcu;->a(Ldd;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_48
    iget-boolean v1, p0, Lcu;->d:Z

    iput-boolean v1, v0, Lcu;->d:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcu;->c()Lcu;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Iterator;
    .registers 3

    iget-boolean v0, p0, Lcu;->d:Z

    if-eqz v0, :cond_14

    new-instance v0, Ldo;

    iget-object v1, p0, Lcu;->a:Lfc;

    .line 91
    invoke-virtual {v1}, Lfc;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ldo;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_14
    iget-object v0, p0, Lcu;->a:Lfc;

    .line 92
    invoke-virtual {v0}, Lfc;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcu;->a:Lfc;

    .line 80
    invoke-virtual {v2}, Lfc;->a()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lcu;->a:Lfc;

    .line 81
    invoke-virtual {v2, v1}, Lfc;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcu;->c(Ljava/util/Map$Entry;)Z

    move-result v2

    if-eqz v2, :cond_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0

    :cond_1a
    iget-object v1, p0, Lcu;->a:Lfc;

    .line 82
    invoke-virtual {v1}, Lfc;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 83
    invoke-static {v2}, Lcu;->c(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_13

    .line 59
    instance-of v0, p1, Lcu;

    if-eqz v0, :cond_11

    .line 60
    check-cast p1, Lcu;

    iget-object v0, p0, Lcu;->a:Lfc;

    .line 61
    iget-object p1, p1, Lcu;->a:Lfc;

    invoke-virtual {v0, p1}, Lfc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcu;->a:Lfc;

    .line 78
    invoke-virtual {v0}, Lfc;->hashCode()I

    move-result v0

    return v0
.end method
