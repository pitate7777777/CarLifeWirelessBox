.class public Le/b/b/s/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A:I = 0x1

.field public static B:I = 0x0

.field public static C:I = 0x0

.field public static D:Z = false

.field public static E:Ljava/lang/String; = ""

.field public static F:Ljava/lang/String; = ""

.field public static G:Z = false

.field public static H:Le/b/b/s/b; = null

.field public static e:Z = false

.field public static f:I = 0x2

.field public static g:I = 0x3

.field public static h:Z = false

.field public static i:I = 0x0

.field public static j:I = 0x0

.field public static k:I = 0x1

.field public static l:Z = false

.field public static m:I = 0x0

.field public static n:I = 0x0

.field public static o:Z = true

.field public static p:Z = false

.field public static q:Z = false

.field public static r:I = 0x1

.field public static s:I = 0x1

.field public static t:I = 0x0

.field public static u:I = 0x4

.field public static v:I = 0x0

.field public static w:Ljava/lang/String; = "usb0"

.field public static x:I = 0x0

.field public static y:Z = false

.field public static z:I


# instance fields
.field public a:I

.field public b:Ljava/util/concurrent/locks/Lock;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/b/b/s/b;->a:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Le/b/b/s/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/b/s/b;->c:Ljava/lang/String;

    iput-object v0, p0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Le/b/b/s/b;)Z
    .locals 33

    move-object/from16 v0, p0

    const-string v1, "CONFIG_SAVE_AUDIO_FILE"

    const-string v2, "CONFIG_TARGET_BLUETOOTH_NAME"

    const-string v3, "CONFIG_WIFI_DIRECT_NAME"

    const-string v4, "CONFIG_BLUETOOTH_AUDIO"

    const-string v5, "CONFIG_WIRLESS_FREQUENCY"

    const-string v6, "CONFIG_WIRLESS_TYPE"

    const-string v7, "INPUT_DISABLE"

    const-string v8, "ENGINE_TYPE"

    const-string v9, "CONTENT_ENCRYPTION"

    const-string v10, "AUDIO_TRANSMISSION_MODE"

    const-string v11, "MEDIA_SAMPLE_RATE"

    const-string v12, "FOCUS_UI"

    const-string v13, "GPS_FORMAT"

    const-string v14, "VEHICLE_GPS"

    const-string v15, "SEND_ACTION_DOWN"

    move-object/from16 v16, v1

    const-string v1, "TRANSPARENT_SEND_TOUCH_EVENT"

    move-object/from16 v17, v2

    const-string v2, "BLUETOOTH_AUTO_PAIR"

    move-object/from16 v18, v3

    const-string v3, "BLUETOOTH_INTERNAL_UI"

    move-object/from16 v19, v4

    const-string v4, "NEED_MORE_DECODE_TIME"

    move-object/from16 v20, v5

    const-string v5, "VOICE_WAKEUP"

    move-object/from16 v21, v6

    const-string v6, "VOICE_MIC"

    move-object/from16 v22, v7

    const-string v7, "AUDIO_TTS_REQUEST_FOCUS"

    move-object/from16 v23, v8

    const-string v8, "AUDIO_TRACK_STREAM_TYPE"

    move-object/from16 v24, v9

    const-string v9, "AUDIO_TRACK_TYPE"

    move-object/from16 v25, v10

    const-string v10, "IPHONE_NCM_ETHERNET_NAME"

    move-object/from16 v26, v11

    const-string v11, "IPHONE_USB_CONNECT_TYPE"

    move-object/from16 v27, v12

    const-string v12, "CONNECT_TYPE_IPHONE"

    move-object/from16 v28, v13

    const-string v13, "AUDIO_TRACK_NUM"

    move-object/from16 v29, v14

    .line 1
    iget-object v14, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v30, v15

    const-string v15, "CarlifeConfUtil"

    const/16 v31, 0x0

    move-object/from16 v32, v1

    const/4 v1, 0x1

    if-nez v14, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "propertyMap is null"

    aput-object v1, v0, v31

    invoke-static {v15, v0}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v1, "CONNECT_TYPE_ANDROID"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/Object;

    const-string v1, "Android phones only support AOA connections"

    aput-object v1, v14, v31

    invoke-static {v15, v14}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v12}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->u:I

    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VALUE_INT_CONNECT_TYPE_IPHONE = "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Le/b/b/s/b;->u:I

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v31

    invoke-static {v15, v12}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v11}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->v:I

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VALUE_INT_IPHONE_USB_CONNECT_TYPE = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Le/b/b/s/b;->v:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v31

    invoke-static {v15, v11}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v10}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/b/b/s/b;->w:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VALUE_STRING_IPHONE_NCM_ETHERNET_NAME = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Le/b/b/s/b;->w:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v31

    invoke-static {v15, v10}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "VALUE_INT_AUDIO_TRACK_NUM = "

    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {v0, v13}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->f:I

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Le/b/b/s/b;->f:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v31

    invoke-static {v15, v11}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v9}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->i:I

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VALUE_INT_AUDIO_TRACK_TYPE = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Le/b/b/s/b;->i:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v31

    invoke-static {v15, v9}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v13}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->f:I

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Le/b/b/s/b;->f:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v31

    invoke-static {v15, v9}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v8}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->g:I

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VALUE_INT_AUDIO_TRACK_STREAM_TYPE = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Le/b/b/s/b;->g:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v31

    invoke-static {v15, v8}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v7}, Le/b/b/s/b;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Le/b/b/s/b;->h:Z

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VALUE_BOOL_AUDIO_FOCUS_REQUIRED = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Le/b/b/s/b;->h:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v31

    invoke-static {v15, v7}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v6}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->j:I

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VALUE_INT_VOICE_MIC = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Le/b/b/s/b;->j:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v31

    invoke-static {v15, v6}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v5}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->k:I

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VALUE_INT_VOICE_WAKEUP = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Le/b/b/s/b;->k:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v31

    invoke-static {v15, v5}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v4}, Le/b/b/s/b;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Le/b/b/s/b;->l:Z

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALUE_BOOL_NEED_MORE_DECODE_TIME = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Le/b/b/s/b;->l:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v31

    invoke-static {v15, v4}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v3}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->m:I

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VALUE_INT_BLUETOOTH_INTERNAL_UI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Le/b/b/s/b;->m:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v31

    invoke-static {v15, v3}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->n:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_BLUETOOTH_AUTO_PAIR = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Le/b/b/s/b;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v2}, Le/b/b/s/b;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Le/b/b/s/b;->o:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_BOOL_TRANSPARENT_SEND_TOUCH_EVENT = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Le/b/b/s/b;->o:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v2}, Le/b/b/s/b;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Le/b/b/s/b;->p:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_BOOL_SEND_ACTION_DOWN = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Le/b/b/s/b;->p:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, v2}, Le/b/b/s/b;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Le/b/b/s/b;->q:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_BOOL_VEHICLE_GPS = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Le/b/b/s/b;->q:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v2}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->r:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_GPS_FORMAT = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Le/b/b/s/b;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v2}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->s:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_FOCUS_UI = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Le/b/b/s/b;->s:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v2}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->t:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_MEDIA_SAMPLE_RATE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Le/b/b/s/b;->t:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, v2}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->x:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_AUDIO_TRANSMISSION_MODE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Le/b/b/s/b;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v2}, Le/b/b/s/b;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Le/b/b/s/b;->y:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_CONTENT_ENCRYPTION = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Le/b/b/s/b;->y:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v2}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->z:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_ENGINE_TYPE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Le/b/b/s/b;->z:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, v2}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->A:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_IS_INPUT_DISABLE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Le/b/b/s/b;->A:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v2}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->B:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_WIRLESS_TYPE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Le/b/b/s/b;->B:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v2}, Le/b/b/s/b;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, Le/b/b/s/b;->C:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_WIRLESS_FREQUENCY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Le/b/b/s/b;->C:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v2}, Le/b/b/s/b;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Le/b/b/s/b;->D:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_BOOL_USE_BT_AUDIO = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Le/b/b/s/b;->D:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/b/b/s/b;->E:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_STRING_USE_BT_AUDIO = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Le/b/b/s/b;->E:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/b/b/s/b;->F:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_STRING_TARGET_BLUETOOTH_NAME = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Le/b/b/s/b;->F:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v31

    invoke-static {v15, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    iget-object v1, v0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0, v2}, Le/b/b/s/b;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Le/b/b/s/b;->G:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    :try_start_2
    new-array v1, v0, [Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VALUE_BOOL_SAVE_AUDIO_FILE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Le/b/b/s/b;->G:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v31

    invoke-static {v15, v1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1e
    const/16 v31, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "update property get exception"

    aput-object v1, v0, v31

    invoke-static {v15, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v31
.end method

.method public static d()Le/b/b/s/b;
    .locals 2

    sget-object v0, Le/b/b/s/b;->H:Le/b/b/s/b;

    if-nez v0, :cond_1

    const-class v0, Le/b/b/s/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/b/b/s/b;->H:Le/b/b/s/b;

    if-nez v1, :cond_0

    new-instance v1, Le/b/b/s/b;

    invoke-direct {v1}, Le/b/b/s/b;-><init>()V

    sput-object v1, Le/b/b/s/b;->H:Le/b/b/s/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Le/b/b/s/b;->H:Le/b/b/s/b;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    const-string v1, "CarlifeConfUtil"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "propertyMap is null"

    aput-object v0, p1, v3

    invoke-static {v1, p1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v3

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "get property fail: "

    invoke-static {v4, p1}, Le/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "NEED_MORE_DECODE_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean p1, Le/b/b/s/b;->l:Z

    return p1

    :cond_0
    const-string v0, "TRANSPARENT_SEND_TOUCH_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p1, Le/b/b/s/b;->o:Z

    return p1

    :cond_1
    const-string v0, "SEND_ACTION_DOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean p1, Le/b/b/s/b;->p:Z

    return p1

    :cond_2
    const-string v0, "VEHICLE_GPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean p1, Le/b/b/s/b;->q:Z

    return p1

    :cond_3
    const-string v0, "AUDIO_TTS_REQUEST_FOCUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean p1, Le/b/b/s/b;->h:Z

    return p1

    :cond_4
    const-string v0, "CONTENT_ENCRYPTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean p1, Le/b/b/s/b;->y:Z

    return p1

    :cond_5
    const-string v0, "CONFIG_BLUETOOTH_AUDIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean p1, Le/b/b/s/b;->D:Z

    return p1

    :cond_6
    const-string v0, "CONFIG_SAVE_AUDIO_FILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean p1, Le/b/b/s/b;->G:Z

    return p1

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "can not find key: "

    invoke-static {v1, p1}, Le/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CarlifeConfUtil"

    invoke-static {p1, v0}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final e(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "propertyMap is null"

    aput-object v2, p1, v0

    const-string v0, "CarlifeConfUtil"

    invoke-static {v0, p1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public f(Ljava/lang/String;)I
    .locals 3

    const-string v0, "VOICE_WAKEUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Le/b/b/s/b;->k:I

    return p1

    :cond_0
    const-string v0, "AUDIO_TRACK_NUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Le/b/b/s/b;->f:I

    return p1

    :cond_1
    const-string v0, "AUDIO_TRACK_STREAM_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p1, Le/b/b/s/b;->g:I

    return p1

    :cond_2
    const-string v0, "AUDIO_TRACK_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p1, Le/b/b/s/b;->i:I

    return p1

    :cond_3
    const-string v0, "VOICE_MIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p1, Le/b/b/s/b;->j:I

    return p1

    :cond_4
    const-string v0, "MEDIA_SAMPLE_RATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p1, Le/b/b/s/b;->t:I

    return p1

    :cond_5
    const-string v0, "CONNECT_TYPE_ANDROID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "CONNECT_TYPE_IPHONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p1, Le/b/b/s/b;->u:I

    return p1

    :cond_7
    const-string v0, "AUDIO_TRANSMISSION_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p1, Le/b/b/s/b;->x:I

    return p1

    :cond_8
    const-string v0, "IPHONE_USB_CONNECT_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p1, Le/b/b/s/b;->v:I

    return p1

    :cond_9
    const-string v0, "GPS_FORMAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget p1, Le/b/b/s/b;->r:I

    return p1

    :cond_a
    const-string v0, "ENGINE_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget p1, Le/b/b/s/b;->z:I

    return p1

    :cond_b
    const-string v0, "INPUT_DISABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget p1, Le/b/b/s/b;->A:I

    return p1

    :cond_c
    const-string v0, "CONFIG_WIRLESS_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget p1, Le/b/b/s/b;->B:I

    return p1

    :cond_d
    const-string v0, "CONFIG_WIRLESS_FREQUENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget p1, Le/b/b/s/b;->C:I

    return p1

    :cond_e
    const-string v0, "BLUETOOTH_INTERNAL_UI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget p1, Le/b/b/s/b;->m:I

    return p1

    :cond_f
    const-string v0, "BLUETOOTH_AUTO_PAIR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget p1, Le/b/b/s/b;->n:I

    return p1

    :cond_10
    const-string v0, "FOCUS_UI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget p1, Le/b/b/s/b;->s:I

    return p1

    :cond_11
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "can not find key: "

    invoke-static {v2, p1}, Le/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "CarlifeConfUtil"

    invoke-static {p1, v0}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p1, -0x80000000

    return p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Le/b/b/s/b;->d:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CarlifeConfUtil"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "propertyMap is null"

    aput-object v0, p1, v1

    invoke-static {v3, p1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v4

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "get property fail: "

    invoke-static {v5, p1}, Le/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method
