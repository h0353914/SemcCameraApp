.class final Lfr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Z

.field public static final b:Z

.field static final c:J

.field static final d:Z

.field private static final e:Ljava/util/logging/Logger;

.field private static final f:Lsun/misc/Unsafe;

.field private static final g:Ljava/lang/Class;

.field private static final h:Z

.field private static final i:Z

.field private static final j:Lfq;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    const-string v0, "copyMemory"

    const-class v1, [D

    const-class v2, [F

    const-class v3, [J

    const-class v4, [I

    const-class v5, [Z

    const-class v6, Lfr;

    .line 1
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sput-object v6, Lfr;->e:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lfr;->a()Lsun/misc/Unsafe;

    move-result-object v6

    sput-object v6, Lfr;->f:Lsun/misc/Unsafe;

    .line 3
    sget-object v7, Lbx;->a:Ljava/lang/Class;

    sput-object v7, Lfr;->g:Ljava/lang/Class;

    .line 4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Lfr;->c(Ljava/lang/Class;)Z

    move-result v7

    sput-boolean v7, Lfr;->h:Z

    .line 5
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lfr;->c(Ljava/lang/Class;)Z

    move-result v8

    sput-boolean v8, Lfr;->i:Z

    const/4 v9, 0x0

    if-eqz v6, :cond_50

    .line 6
    invoke-static {}, Lbx;->a()Z

    move-result v10

    if-nez v10, :cond_41

    new-instance v9, Lfp;

    .line 7
    invoke-direct {v9, v6}, Lfp;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_50

    :cond_41
    if-eqz v7, :cond_49

    .line 58
    new-instance v9, Lfo;

    .line 8
    invoke-direct {v9, v6}, Lfo;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_50

    :cond_49
    if-eqz v8, :cond_50

    new-instance v9, Lfn;

    .line 9
    invoke-direct {v9, v6}, Lfn;-><init>(Lsun/misc/Unsafe;)V

    .line 7
    :cond_50
    :goto_50
    sput-object v9, Lfr;->j:Lfq;

    const-string v7, "putLong"

    const-string v8, "putInt"

    const-string v9, "putByte"

    const-string v10, "getInt"

    const-string v11, "getByte"

    const-string v12, "objectFieldOffset"

    const-string v13, "com.google.protobuf.UnsafeUtil"

    const-string v14, "platform method missing - proto runtime falling back to safer methods: "

    const-string v15, "getLong"

    move-object/from16 v16, v1

    const/4 v1, 0x1

    const/16 v17, 0x0

    if-eqz v6, :cond_143

    .line 10
    :try_start_6b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_117

    move-object/from16 v18, v2

    :try_start_71
    new-array v2, v1, [Ljava/lang/Class;

    const-class v19, Ljava/lang/reflect/Field;

    aput-object v19, v2, v17

    .line 11
    invoke-virtual {v6, v12, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v17

    .line 12
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_83
    .catchall {:try_start_71 .. :try_end_83} :catchall_115

    move-object/from16 v20, v3

    const/4 v3, 0x1

    :try_start_86
    aput-object v2, v1, v3

    invoke-virtual {v6, v15, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    invoke-static {}, Lfr;->b()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_147

    .line 14
    invoke-static {}, Lbx;->a()Z

    move-result v1

    if-nez v1, :cond_111

    new-array v1, v3, [Ljava/lang/Class;

    .line 15
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v17

    invoke-virtual {v6, v11, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 16
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v17

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    .line 17
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v17

    invoke-virtual {v6, v10, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 18
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v17

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v6, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    .line 19
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v17

    invoke-virtual {v6, v15, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 20
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v17

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v6, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 21
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v17

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v6, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v17

    .line 22
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_111
    .catchall {:try_start_86 .. :try_end_111} :catchall_113

    :cond_111
    const/4 v0, 0x1

    goto :goto_149

    :catchall_113
    move-exception v0

    goto :goto_11c

    :catchall_115
    move-exception v0

    goto :goto_11a

    :catchall_117
    move-exception v0

    move-object/from16 v18, v2

    :goto_11a
    move-object/from16 v20, v3

    .line 9
    :goto_11c
    sget-object v1, Lfr;->e:Ljava/util/logging/Logger;

    .line 23
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x47

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "supportsUnsafeByteBufferOperations"

    invoke-virtual {v1, v2, v13, v3, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_147

    :cond_143
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    :cond_147
    :goto_147
    move/from16 v0, v17

    .line 22
    :goto_149
    sput-boolean v0, Lfr;->a:Z

    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    if-eqz v0, :cond_2aa

    .line 24
    :try_start_14f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_153
    .catchall {:try_start_14f .. :try_end_153} :catchall_281

    const/4 v1, 0x1

    :try_start_154
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/reflect/Field;

    aput-object v3, v2, v17

    .line 25
    invoke-virtual {v0, v12, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Class;

    aput-object v3, v2, v17

    const-string v3, "arrayBaseOffset"

    .line 26
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;
    :try_end_16a
    .catchall {:try_start_154 .. :try_end_16a} :catchall_27e

    :try_start_16a
    const-class v1, Ljava/lang/Class;

    aput-object v1, v2, v17

    const-string v1, "arrayIndexScale"

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v17

    .line 28
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_17c
    .catchall {:try_start_16a .. :try_end_17c} :catchall_281

    const/4 v3, 0x1

    :try_start_17d
    aput-object v1, v2, v3
    :try_end_17f
    .catchall {:try_start_17d .. :try_end_17f} :catchall_27c

    :try_start_17f
    invoke-virtual {v0, v10, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v17

    .line 29
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_18b
    .catchall {:try_start_17f .. :try_end_18b} :catchall_281

    const/4 v3, 0x1

    :try_start_18c
    aput-object v1, v2, v3
    :try_end_18e
    .catchall {:try_start_18c .. :try_end_18e} :catchall_27c

    :try_start_18e
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v0, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v17

    .line 30
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_19e
    .catchall {:try_start_18e .. :try_end_19e} :catchall_281

    const/4 v3, 0x1

    :try_start_19f
    aput-object v2, v1, v3
    :try_end_1a1
    .catchall {:try_start_19f .. :try_end_1a1} :catchall_27c

    :try_start_1a1
    invoke-virtual {v0, v15, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v17

    .line 31
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_1ad
    .catchall {:try_start_1a1 .. :try_end_1ad} :catchall_281

    const/4 v3, 0x1

    :try_start_1ae
    aput-object v1, v2, v3
    :try_end_1b0
    .catchall {:try_start_1ae .. :try_end_1b0} :catchall_27c

    :try_start_1b0
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v0, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v17

    .line 32
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_1c0
    .catchall {:try_start_1b0 .. :try_end_1c0} :catchall_281

    const/4 v3, 0x1

    :try_start_1c1
    aput-object v2, v1, v3
    :try_end_1c3
    .catchall {:try_start_1c1 .. :try_end_1c3} :catchall_27c

    :try_start_1c3
    const-string v2, "getObject"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v17

    .line 33
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_1d1
    .catchall {:try_start_1c3 .. :try_end_1d1} :catchall_281

    const/4 v3, 0x1

    :try_start_1d2
    aput-object v1, v2, v3
    :try_end_1d4
    .catchall {:try_start_1d2 .. :try_end_1d4} :catchall_27c

    :try_start_1d4
    const-class v1, Ljava/lang/Object;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "putObject"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    invoke-static {}, Lbx;->a()Z

    move-result v1

    if-nez v1, :cond_279

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v17

    .line 35
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_1ec
    .catchall {:try_start_1d4 .. :try_end_1ec} :catchall_281

    const/4 v3, 0x1

    :try_start_1ed
    aput-object v2, v1, v3
    :try_end_1ef
    .catchall {:try_start_1ed .. :try_end_1ef} :catchall_27c

    :try_start_1ef
    invoke-virtual {v0, v11, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v17

    .line 36
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_1fb
    .catchall {:try_start_1ef .. :try_end_1fb} :catchall_281

    const/4 v3, 0x1

    :try_start_1fc
    aput-object v1, v2, v3
    :try_end_1fe
    .catchall {:try_start_1fc .. :try_end_1fe} :catchall_27c

    :try_start_1fe
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v0, v9, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v17

    .line 37
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_20e
    .catchall {:try_start_1fe .. :try_end_20e} :catchall_281

    const/4 v3, 0x1

    :try_start_20f
    aput-object v2, v1, v3
    :try_end_211
    .catchall {:try_start_20f .. :try_end_211} :catchall_27c

    :try_start_211
    const-string v2, "getBoolean"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v17

    .line 38
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_21f
    .catchall {:try_start_211 .. :try_end_21f} :catchall_281

    const/4 v3, 0x1

    :try_start_220
    aput-object v1, v2, v3
    :try_end_222
    .catchall {:try_start_220 .. :try_end_222} :catchall_27c

    :try_start_222
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "putBoolean"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v17

    .line 39
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_234
    .catchall {:try_start_222 .. :try_end_234} :catchall_281

    const/4 v3, 0x1

    :try_start_235
    aput-object v2, v1, v3
    :try_end_237
    .catchall {:try_start_235 .. :try_end_237} :catchall_27c

    :try_start_237
    const-string v2, "getFloat"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v17

    .line 40
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_245
    .catchall {:try_start_237 .. :try_end_245} :catchall_281

    const/4 v3, 0x1

    :try_start_246
    aput-object v1, v2, v3
    :try_end_248
    .catchall {:try_start_246 .. :try_end_248} :catchall_27c

    :try_start_248
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "putFloat"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v17

    .line 41
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_25a
    .catchall {:try_start_248 .. :try_end_25a} :catchall_281

    const/4 v3, 0x1

    :try_start_25b
    aput-object v2, v1, v3
    :try_end_25d
    .catchall {:try_start_25b .. :try_end_25d} :catchall_27c

    :try_start_25d
    const-string v2, "getDouble"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v17

    .line 42
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_26b
    .catchall {:try_start_25d .. :try_end_26b} :catchall_281

    const/4 v3, 0x1

    :try_start_26c
    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v2, v1, v6

    const-string v2, "putDouble"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_278
    .catchall {:try_start_26c .. :try_end_278} :catchall_27c

    goto :goto_27a

    :cond_279
    const/4 v3, 0x1

    :goto_27a
    move v0, v3

    goto :goto_2ad

    :catchall_27c
    move-exception v0

    goto :goto_283

    :catchall_27e
    move-exception v0

    move v3, v1

    goto :goto_283

    :catchall_281
    move-exception v0

    const/4 v3, 0x1

    .line 23
    :goto_283
    sget-object v1, Lfr;->e:Ljava/util/logging/Logger;

    .line 43
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x47

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "supportsUnsafeArrayOperations"

    invoke-virtual {v1, v2, v13, v6, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ab

    :cond_2aa
    const/4 v3, 0x1

    :goto_2ab
    move/from16 v0, v17

    .line 42
    :goto_2ad
    sput-boolean v0, Lfr;->b:Z

    const-class v0, [B

    .line 44
    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lfr;->c:J

    .line 45
    invoke-static {v5}, Lfr;->b(Ljava/lang/Class;)I

    .line 46
    invoke-static {v5}, Lfr;->d(Ljava/lang/Class;)V

    .line 47
    invoke-static {v4}, Lfr;->b(Ljava/lang/Class;)I

    .line 48
    invoke-static {v4}, Lfr;->d(Ljava/lang/Class;)V

    .line 49
    invoke-static/range {v20 .. v20}, Lfr;->b(Ljava/lang/Class;)I

    .line 50
    invoke-static/range {v20 .. v20}, Lfr;->d(Ljava/lang/Class;)V

    .line 51
    invoke-static/range {v18 .. v18}, Lfr;->b(Ljava/lang/Class;)I

    .line 52
    invoke-static/range {v18 .. v18}, Lfr;->d(Ljava/lang/Class;)V

    .line 53
    invoke-static/range {v16 .. v16}, Lfr;->b(Ljava/lang/Class;)I

    .line 54
    invoke-static/range {v16 .. v16}, Lfr;->d(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    .line 55
    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Lfr;->d(Ljava/lang/Class;)V

    .line 57
    invoke-static {}, Lfr;->b()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_2e7

    goto :goto_2ee

    .line 59
    :cond_2e7
    sget-object v1, Lfr;->j:Lfq;

    if-eqz v1, :cond_2ee

    .line 58
    invoke-virtual {v1, v0}, Lfq;->a(Ljava/lang/reflect/Field;)V

    .line 59
    :cond_2ee
    :goto_2ee
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_2f8

    move v1, v3

    goto :goto_2fa

    :cond_2f8
    move/from16 v1, v17

    :goto_2fa
    sput-boolean v1, Lfr;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BJ)B
    .registers 6

    sget-object v0, Lfr;->j:Lfq;

    sget-wide v1, Lfr;->c:J

    add-long/2addr v1, p1

    .line 82
    invoke-virtual {v0, p0, v1, v2}, Lfq;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Object;J)I
    .registers 4

    sget-object v0, Lfr;->j:Lfq;

    .line 87
    invoke-virtual {v0, p0, p1, p2}, Lfq;->e(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    :try_start_0
    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    .line 61
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2

    .line 78
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_6

    :catchall_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method static a()Lsun/misc/Unsafe;
    .registers 1

    .line 90
    :try_start_0
    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    .line 91
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public static a(Ljava/lang/Object;JB)V
    .registers 8

    long-to-int v0, p1

    not-int v0, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v1, -0x4

    and-long/2addr p1, v1

    .line 96
    invoke-static {p0, p1, p2}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    const/16 v2, 0xff

    shl-int v3, v2, v0

    not-int v3, v3

    and-int/2addr v1, v3

    and-int/2addr p3, v2

    shl-int/2addr p3, v0

    or-int/2addr p3, v1

    .line 97
    invoke-static {p0, p1, p2, p3}, Lfr;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JD)V
    .registers 11

    sget-object v0, Lfr;->j:Lfq;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 100
    invoke-virtual/range {v0 .. v5}, Lfq;->a(Ljava/lang/Object;JD)V

    return-void
.end method

.method static a(Ljava/lang/Object;JF)V
    .registers 5

    sget-object v0, Lfr;->j:Lfq;

    .line 101
    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method static a(Ljava/lang/Object;JI)V
    .registers 5

    sget-object v0, Lfr;->j:Lfq;

    .line 102
    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JJ)V
    .registers 11

    sget-object v0, Lfr;->j:Lfq;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 103
    invoke-virtual/range {v0 .. v5}, Lfq;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    sget-object v0, Lfr;->j:Lfq;

    .line 104
    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;JZ)V
    .registers 5

    sget-object v0, Lfr;->j:Lfq;

    .line 92
    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static a([BJB)V
    .registers 7

    sget-object v0, Lfr;->j:Lfq;

    sget-wide v1, Lfr;->c:J

    add-long/2addr v1, p1

    .line 95
    invoke-virtual {v0, p0, v1, v2, p3}, Lfq;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static b(Ljava/lang/Class;)I
    .registers 2

    sget-boolean v0, Lfr;->b:Z

    if-eqz v0, :cond_b

    sget-object v0, Lfr;->j:Lfq;

    .line 63
    invoke-virtual {v0, p0}, Lfq;->a(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method static b(Ljava/lang/Object;J)J
    .registers 4

    sget-object v0, Lfr;->j:Lfq;

    .line 88
    invoke-virtual {v0, p0, p1, p2}, Lfq;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static b()Ljava/lang/reflect/Field;
    .registers 3

    .line 65
    invoke-static {}, Lbx;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    .line 66
    invoke-static {v0, v1}, Lfr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 67
    invoke-static {v0, v1}, Lfr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 68
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_25

    return-object v0

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;JB)V
    .registers 8

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v1, -0x4

    and-long/2addr p1, v1

    .line 98
    invoke-static {p0, p1, p2}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    const/16 v2, 0xff

    shl-int v3, v2, v0

    not-int v3, v3

    and-int/2addr v1, v3

    and-int/2addr p3, v2

    shl-int/2addr p3, v0

    or-int/2addr p3, v1

    .line 99
    invoke-static {p0, p1, p2, p3}, Lfr;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static b(Ljava/lang/Object;JZ)V
    .registers 4

    .line 93
    invoke-static {p0, p1, p2, p3}, Lfr;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static c(Ljava/lang/Object;JZ)V
    .registers 4

    .line 94
    invoke-static {p0, p1, p2, p3}, Lfr;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static c(Ljava/lang/Class;)Z
    .registers 10

    .line 69
    const-class v0, [B

    invoke-static {}, Lbx;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_88

    :try_start_9
    sget-object v1, Lfr;->g:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v2

    .line 70
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "peekLong"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 71
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    const-string v7, "pokeLong"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 72
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    const-string v7, "pokeInt"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 73
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "peekInt"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 74
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v2

    const-string v7, "peekByte"

    .line 75
    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v2

    aput-object v0, v7, v6

    .line 76
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-string v8, "pokeByteArray"

    invoke-virtual {v1, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v2

    aput-object v0, v5, v6

    .line 77
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v4

    const-string p0, "peekByteArray"

    invoke-virtual {v1, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_87
    .catchall {:try_start_9 .. :try_end_87} :catchall_88

    return v6

    :catchall_88
    :cond_88
    return v2
.end method

.method static c(Ljava/lang/Object;J)Z
    .registers 4

    sget-object v0, Lfr;->j:Lfq;

    .line 79
    invoke-virtual {v0, p0, p1, p2}, Lfq;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Object;J)F
    .registers 4

    sget-object v0, Lfr;->j:Lfq;

    .line 86
    invoke-virtual {v0, p0, p1, p2}, Lfq;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/Class;)V
    .registers 2

    sget-boolean v0, Lfr;->b:Z

    if-eqz v0, :cond_9

    sget-object v0, Lfr;->j:Lfq;

    .line 64
    invoke-virtual {v0, p0}, Lfq;->b(Ljava/lang/Class;)I

    :cond_9
    return-void
.end method

.method static e(Ljava/lang/Object;J)D
    .registers 4

    sget-object v0, Lfr;->j:Lfq;

    .line 85
    invoke-virtual {v0, p0, p1, p2}, Lfq;->d(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static f(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lfr;->j:Lfq;

    .line 89
    invoke-virtual {v0, p0, p1, p2}, Lfq;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 83
    invoke-static {p0, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static h(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 84
    invoke-static {p0, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static i(Ljava/lang/Object;J)Z
    .registers 3

    .line 80
    invoke-static {p0, p1, p2}, Lfr;->g(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Ljava/lang/Object;J)Z
    .registers 3

    .line 81
    invoke-static {p0, p1, p2}, Lfr;->h(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
