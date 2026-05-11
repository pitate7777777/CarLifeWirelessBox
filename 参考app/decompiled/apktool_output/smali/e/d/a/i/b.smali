.class public final Le/d/a/i/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/Set;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    const-string v2, "android.permission.WRITE_SETTINGS"

    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "elements"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$toSet"

    .line 2
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x4

    invoke-static {v3}, Ld/b/k/m$i;->H0(I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    const-string v4, "$this$toCollection"

    .line 3
    invoke-static {v1, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "destination"

    invoke-static {v2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sput-object v2, Le/d/a/i/b;->a:Ljava/util/Set;

    const/16 v1, 0x1e

    new-array v1, v1, [Lf/c;

    .line 5
    new-instance v2, Lf/c;

    const-string v5, "android.permission.READ_CALENDAR"

    const-string v6, "android.permission-group.CALENDAR"

    invoke-direct {v2, v5, v6}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    new-instance v2, Lf/c;

    const-string v4, "android.permission.WRITE_CALENDAR"

    invoke-direct {v2, v4, v6}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v4, Lf/c;

    const-string v5, "android.permission.READ_CALL_LOG"

    const-string v6, "android.permission-group.CALL_LOG"

    invoke-direct {v4, v5, v6}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x3

    new-instance v4, Lf/c;

    const-string v5, "android.permission.WRITE_CALL_LOG"

    invoke-direct {v4, v5, v6}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    new-instance v2, Lf/c;

    const-string v4, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-direct {v2, v4, v6}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    const/4 v2, 0x5

    new-instance v3, Lf/c;

    const-string v4, "android.permission.CAMERA"

    const-string v5, "android.permission-group.CAMERA"

    invoke-direct {v3, v4, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lf/c;

    const-string v4, "android.permission.READ_CONTACTS"

    const-string v5, "android.permission-group.CONTACTS"

    invoke-direct {v3, v4, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lf/c;

    const-string v4, "android.permission.WRITE_CONTACTS"

    invoke-direct {v3, v4, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lf/c;

    const-string v4, "android.permission.GET_ACCOUNTS"

    invoke-direct {v3, v4, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lf/c;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const-string v5, "android.permission-group.LOCATION"

    invoke-direct {v3, v4, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lf/c;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {v3, v4, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lf/c;

    invoke-direct {v3, v0, v5}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/16 v0, 0xc

    new-instance v2, Lf/c;

    const-string v3, "android.permission.RECORD_AUDIO"

    const-string v4, "android.permission-group.MICROPHONE"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0xd

    new-instance v2, Lf/c;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission-group.PHONE"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0xe

    new-instance v2, Lf/c;

    const-string v3, "android.permission.READ_PHONE_NUMBERS"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0xf

    new-instance v2, Lf/c;

    const-string v3, "android.permission.CALL_PHONE"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x10

    new-instance v2, Lf/c;

    const-string v3, "android.permission.ANSWER_PHONE_CALLS"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x11

    new-instance v2, Lf/c;

    const-string v3, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x12

    new-instance v2, Lf/c;

    const-string v3, "android.permission.USE_SIP"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x13

    new-instance v2, Lf/c;

    const-string v3, "android.permission.ACCEPT_HANDOVER"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x14

    new-instance v2, Lf/c;

    const-string v3, "android.permission.BODY_SENSORS"

    const-string v4, "android.permission-group.SENSORS"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x15

    new-instance v2, Lf/c;

    const-string v3, "android.permission.ACTIVITY_RECOGNITION"

    const-string v4, "android.permission-group.ACTIVITY_RECOGNITION"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x16

    new-instance v2, Lf/c;

    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "android.permission-group.SMS"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x17

    new-instance v2, Lf/c;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x18

    new-instance v2, Lf/c;

    const-string v3, "android.permission.READ_SMS"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x19

    new-instance v2, Lf/c;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    new-instance v2, Lf/c;

    const-string v3, "android.permission.RECEIVE_MMS"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    new-instance v2, Lf/c;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v4, "android.permission-group.STORAGE"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    new-instance v2, Lf/c;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    new-instance v2, Lf/c;

    const-string v3, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-direct {v2, v3, v4}, Lf/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 6
    invoke-static {v1}, Ld/b/k/m$i;->I0([Lf/c;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/d/a/i/b;->b:Ljava/util/Map;

    sput-object v0, Le/d/a/i/b;->c:Ljava/util/Map;

    return-void
.end method
