.class public final Le/b/a/a/p/h;
.super Le/b/a/a/o/c;
.source ""

# interfaces
.implements Le/b/a/a/p/c;
.implements Le/b/a/a/p/e;


# instance fields
.field public final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public E:Ljava/security/PublicKey;

.field public F:Le/b/a/a/o/h/f/a;

.field public final G:Le/b/a/a/p/o/b;

.field public H:Le/b/a/a/p/e;

.field public final I:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/b/a/a/p/g;",
            ">;"
        }
    .end annotation
.end field

.field public final J:Le/b/a/a/p/m/a/c;

.field public final K:Le/b/a/a/p/k/b;

.field public final L:Le/b/a/a/p/n/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cuid"

    invoke-static {p3, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "features"

    invoke-static {p4, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityClass"

    invoke-static {p5, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {p6, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p6}, Le/b/a/a/o/c;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object p4, p0, Le/b/a/a/p/h;->C:Ljava/util/Map;

    iput-object p5, p0, Le/b/a/a/p/h;->D:Ljava/lang/Class;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/h;->I:Ljava/util/Set;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p5, "VEHICLE_PROTOCOL_VERSION"

    invoke-virtual {p0, p5, p1}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1
    iput p1, p0, Le/b/a/a/o/c;->y:I

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setChannel(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setCuid(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Le/b/a/a/o/c;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionCode(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Le/b/a/a/o/c;->getVersionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectSuccessCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectTime(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 3
    iput-object p1, p0, Le/b/a/a/o/c;->A:Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p3, "CONFIG_CONTENT_ENCRYPTION"

    invoke-virtual {p0, p3, p1}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p5, 0x1

    if-eqz p3, :cond_1

    const-string p3, "CONTENT_ENCRYPTION"

    :try_start_0
    const-string p6, "RSA"

    .line 5
    invoke-static {p6}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p6

    const/16 v0, 0x800

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p6, v0, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    invoke-virtual {p6}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object p6

    invoke-virtual {p6}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Le/b/a/a/p/h;->E:Ljava/security/PublicKey;

    new-instance v0, Le/b/a/a/o/h/f/a;

    invoke-virtual {p6}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p6

    const-string v1, "it.private"

    invoke-static {p6, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "privateKey"

    .line 6
    invoke-static {p6, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "transformation"

    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/b/a/a/o/f;

    invoke-direct {v2, p6, v1}, Le/b/a/a/o/f;-><init>(Ljava/security/Key;Ljava/lang/String;)V

    .line 7
    invoke-direct {v0, v2}, Le/b/a/a/o/h/f/a;-><init>(Le/b/a/a/o/f;)V

    iput-object v0, p0, Le/b/a/a/p/h;->F:Le/b/a/a/o/h/f/a;

    invoke-virtual {p0, p3, p5}, Le/b/a/a/p/h;->d0(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p6

    invoke-virtual {p0, p3, p2}, Le/b/a/a/p/h;->d0(Ljava/lang/String;I)V

    const/4 p3, 0x2

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "CarLifeReceiverImpl initEncryption exception: "

    aput-object v1, v0, p2

    aput-object p6, v0, p5

    const-string p2, "CarLife_SDK"

    const-string p6, "tag"

    .line 8
    invoke-static {p2, p6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "args"

    invoke-static {v0, p6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p6, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p6, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x6

    invoke-virtual {p6, v0, p2, p3}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0, p4}, Le/b/a/a/o/c;->o(Ljava/util/Map;)V

    new-instance p2, Le/b/a/a/p/o/b;

    invoke-direct {p2, p0}, Le/b/a/a/p/o/b;-><init>(Le/b/a/a/c;)V

    iput-object p2, p0, Le/b/a/a/p/h;->G:Le/b/a/a/p/o/b;

    new-instance p2, Le/b/a/a/p/k/b;

    new-instance p3, Le/b/a/a/p/a;

    invoke-direct {p3, p0}, Le/b/a/a/p/a;-><init>(Le/b/a/a/p/h;)V

    invoke-direct {p2, p0, p3}, Le/b/a/a/p/k/b;-><init>(Le/b/a/a/c;Le/b/a/a/p/g;)V

    iput-object p2, p0, Le/b/a/a/p/h;->K:Le/b/a/a/p/k/b;

    new-instance p3, Le/b/a/a/p/n/a;

    invoke-direct {p3, p0}, Le/b/a/a/p/n/a;-><init>(Le/b/a/a/c;)V

    iput-object p3, p0, Le/b/a/a/p/h;->L:Le/b/a/a/p/n/a;

    invoke-virtual {p0, p3}, Le/b/a/a/p/h;->s(Le/b/a/a/p/g;)V

    const-string p3, "CARLIFE_BOX_ACTIVE_DEVICE"

    invoke-virtual {p0, p3, p1}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Le/b/a/a/p/m/a/b;

    invoke-direct {p3}, Le/b/a/a/p/m/a/b;-><init>()V

    invoke-virtual {p0, p3}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    :cond_2
    new-instance p3, Le/b/a/a/o/h/d;

    invoke-direct {p3, p5}, Le/b/a/a/o/h/d;-><init>(Z)V

    invoke-virtual {p0, p3}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    new-instance p3, Le/b/a/a/p/m/a/c;

    invoke-direct {p3, p0}, Le/b/a/a/p/m/a/c;-><init>(Le/b/a/a/c;)V

    iput-object p3, p0, Le/b/a/a/p/h;->J:Le/b/a/a/p/m/a/c;

    invoke-virtual {p0, p3}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    invoke-virtual {p0, p2}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    new-instance p2, Le/b/a/a/p/m/a/f;

    iget-object p3, p0, Le/b/a/a/p/h;->F:Le/b/a/a/o/h/f/a;

    iget-object p4, p0, Le/b/a/a/p/h;->E:Ljava/security/PublicKey;

    invoke-direct {p2, p3, p4}, Le/b/a/a/p/m/a/f;-><init>(Le/b/a/a/o/h/f/a;Ljava/security/PublicKey;)V

    invoke-virtual {p0, p2}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    new-instance p2, Le/b/a/a/p/m/a/h;

    invoke-direct {p2}, Le/b/a/a/p/m/a/h;-><init>()V

    invoke-virtual {p0, p2}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    new-instance p2, Le/b/a/a/p/m/a/g;

    invoke-direct {p2, p0, p0}, Le/b/a/a/p/m/a/g;-><init>(Le/b/a/a/c;Le/b/a/a/p/e;)V

    invoke-virtual {p0, p2}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    const-string p2, "GO_TO_DESKTOP_SDK"

    invoke-virtual {p0, p2, p1}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Le/b/a/a/o/e/d/d;

    invoke-direct {p3}, Le/b/a/a/o/e/d/d;-><init>()V

    invoke-virtual {p0, p3}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    :cond_3
    new-instance p3, Le/b/a/a/p/m/a/e;

    invoke-direct {p3}, Le/b/a/a/p/m/a/e;-><init>()V

    invoke-virtual {p0, p3}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    invoke-virtual {p0, p2, p1}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Le/b/a/a/p/m/a/d;

    invoke-direct {p2}, Le/b/a/a/p/m/a/d;-><init>()V

    invoke-virtual {p0, p2}, Le/b/a/a/o/c;->W(Le/b/a/a/o/i/b;)V

    :cond_4
    const-string p2, "MUSIC_MODULE_SDK"

    invoke-virtual {p0, p2, p1}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Le/b/a/a/p/l/a;

    invoke-direct {p2, p0}, Le/b/a/a/p/l/a;-><init>(Le/b/a/a/c;)V

    invoke-virtual {p0, p2}, Le/b/a/a/o/c;->a0(Le/b/a/a/d;)V

    :cond_5
    const-string p2, "NAV_MODULE_SDK"

    invoke-virtual {p0, p2, p1}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Le/b/a/a/p/l/c;

    invoke-direct {p2, p0}, Le/b/a/a/p/l/c;-><init>(Le/b/a/a/c;)V

    invoke-virtual {p0, p2}, Le/b/a/a/o/c;->a0(Le/b/a/a/d;)V

    :cond_6
    const-string p2, "VR_MODULE_SDK"

    invoke-virtual {p0, p2, p1}, Le/b/a/a/o/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Le/b/a/a/p/l/b;

    invoke-direct {p1, p0}, Le/b/a/a/p/l/b;-><init>(Le/b/a/a/c;)V

    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->a0(Le/b/a/a/d;)V

    :cond_7
    return-void
.end method

.method public static final r(Le/b/a/a/p/h;II)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/b/a/a/p/h;->I:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/p/g;

    invoke-interface {v1, p1, p2}, Le/b/a/a/p/g;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public V0(Le/b/a/a/o/h/a;)Le/b/a/a/o/h/a;
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/b/a/a/p/h;->F:Le/b/a/a/o/h/f/a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Le/b/a/a/o/h/f/a;->b:Le/b/a/a/o/d;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le/b/a/a/o/h/a;->c()Le/b/a/a/o/h/a;

    move-result-object v0

    invoke-virtual {p1}, Le/b/a/a/o/h/a;->i()I

    move-result v2

    iget-object v3, v1, Le/b/a/a/o/h/f/a;->b:Le/b/a/a/o/d;

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 2
    iget-object v3, v3, Le/b/a/a/o/d;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v2

    .line 3
    invoke-virtual {v0, v2}, Le/b/a/a/o/h/a;->z(I)V

    invoke-virtual {v0}, Le/b/a/a/o/h/a;->h()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Le/b/a/a/o/h/a;->y(I)V

    iget-object v1, v1, Le/b/a/a/o/h/f/a;->b:Le/b/a/a/o/d;

    invoke-static {v1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 4
    iget-object v3, p1, Le/b/a/a/o/h/a;->i:[B

    .line 5
    invoke-virtual {p1}, Le/b/a/a/o/h/a;->h()I

    move-result v4

    invoke-virtual {p1}, Le/b/a/a/o/h/a;->i()I

    move-result v5

    .line 6
    iget-object v6, v0, Le/b/a/a/o/h/a;->i:[B

    .line 7
    invoke-virtual {v0}, Le/b/a/a/o/h/a;->h()I

    move-result v7

    const-string p1, "data"

    .line 8
    invoke-static {v3, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "output"

    invoke-static {v6, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Le/b/a/a/o/d;->a:Ljavax/crypto/Cipher;

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-object p1, v0

    :goto_0
    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "encryptor does not initialized properly"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Le/b/a/a/p/h;->G:Le/b/a/a/p/o/b;

    .line 1
    iget-object v0, v0, Le/b/a/a/p/o/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/o/i/e;

    invoke-virtual {v1}, Le/b/a/a/o/i/e;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c0(Le/b/a/a/o/h/a;)Le/b/a/a/o/h/a;
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "message"

    invoke-static {v1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    iget-object v3, v2, Le/b/a/a/p/h;->F:Le/b/a/a/o/h/f/a;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-static {v1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Le/b/a/a/o/h/a;->k()I

    move-result v4

    iget-object v0, v3, Le/b/a/a/o/h/f/a;->b:Le/b/a/a/o/d;

    const-string v5, "args"

    const-string v6, "tag"

    const-string v7, "CarLife_SDK"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x6

    if-nez v0, :cond_2

    new-array v0, v9, [Ljava/lang/Object;

    const-string v3, "EncryptionTool encryptor does not initialized properly"

    aput-object v3, v0, v8

    .line 2
    invoke-static {v7, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v10, v7, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5
    :cond_2
    iget-object v0, v3, Le/b/a/a/o/h/f/a;->c:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Le/b/a/a/o/h/a;->c()Le/b/a/a/o/h/a;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Le/b/a/a/o/h/a;->m()I

    move-result v0

    invoke-virtual {v11, v0}, Le/b/a/a/o/h/a;->y(I)V

    :try_start_0
    iget-object v0, v3, Le/b/a/a/o/h/f/a;->b:Le/b/a/a/o/d;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 6
    iget-object v13, v1, Le/b/a/a/o/h/a;->i:[B

    .line 7
    invoke-virtual/range {p1 .. p1}, Le/b/a/a/o/h/a;->h()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Le/b/a/a/o/h/a;->i()I

    move-result v15

    .line 8
    iget-object v12, v11, Le/b/a/a/o/h/a;->i:[B

    .line 9
    invoke-virtual {v11}, Le/b/a/a/o/h/a;->h()I

    move-result v17

    const-string v10, "data"

    .line 10
    invoke-static {v13, v10}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "output"

    invoke-static {v12, v10}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Le/b/a/a/o/d;->b:Ljavax/crypto/Cipher;

    move-object v10, v12

    move-object v12, v0

    move-object/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    .line 11
    invoke-virtual {v11, v0}, Le/b/a/a/o/h/a;->z(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v11

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v10, 0x4

    new-array v12, v10, [Ljava/lang/Object;

    const-string v13, "EncryptionTool decrypt exception "

    aput-object v13, v12, v8

    aput-object v0, v12, v9

    const/4 v0, 0x2

    const-string v8, "  "

    aput-object v8, v12, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x3

    aput-object v0, v12, v8

    .line 12
    invoke-static {v7, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v0, v6, v7, v5}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_0
    iget-object v0, v3, Le/b/a/a/o/h/f/a;->c:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Le/b/a/a/o/h/a;->w()V

    :goto_1
    return-object v1
.end method

.method public d0(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Le/b/a/a/o/c;->f1(Ljava/lang/String;IZ)V

    iget-object v0, p0, Le/b/a/a/p/h;->C:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Le/b/a/a/o/c;->onConnectionDetached(Le/b/a/a/c;)V

    .line 2
    iget-object v0, p0, Le/b/a/a/p/h;->C:Ljava/util/Map;

    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->o(Ljava/util/Map;)V

    return-void
.end method

.method public f(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/p/h;->H:Le/b/a/a/p/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Le/b/a/a/p/e;->f(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public f1(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Le/b/a/a/o/c;->f1(Ljava/lang/String;IZ)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Le/b/a/a/p/h;->C:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onConnectionReattached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/b/a/a/p/h;->C:Ljava/util/Map;

    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->o(Ljava/util/Map;)V

    return-void
.end method

.method public q1(Le/b/a/a/o/h/a;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/b/a/a/p/h;->G:Le/b/a/a/p/o/b;

    if-eqz v1, :cond_1

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Le/b/a/a/p/o/b;->g:Le/b/a/a/o/i/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Le/b/a/a/o/i/d;->b(Le/b/a/a/o/h/a;)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public declared-synchronized s(Le/b/a/a/p/g;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/p/h;->K:Le/b/a/a/p/k/b;

    .line 1
    iget-object v0, v0, Le/b/a/a/p/k/b;->g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    move-result v0

    invoke-interface {p1, v1, v0}, Le/b/a/a/p/g;->a(II)V

    :goto_0
    iget-object v0, p0, Le/b/a/a/p/h;->I:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public v(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "setConnectType, "

    invoke-static {v2, v1}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "CONNECT_TYPE"

    .line 4
    invoke-virtual {p0, v0, p1}, Le/b/a/a/p/h;->d0(Ljava/lang/String;I)V

    iget-object p1, p0, Le/b/a/a/p/h;->G:Le/b/a/a/p/o/b;

    invoke-virtual {p1}, Le/b/a/a/p/o/b;->b()V

    iget-object p1, p0, Le/b/a/a/p/h;->G:Le/b/a/a/p/o/b;

    invoke-virtual {p1}, Le/b/a/a/p/o/b;->g()V

    return-void
.end method

.method public w(Le/b/a/a/q/e/a;)V
    .locals 2

    const-string v0, "displaySpec"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/p/h;->K:Le/b/a/a/p/k/b;

    if-eqz v0, :cond_0

    const-string v1, "<set-?>"

    .line 1
    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Le/b/a/a/p/k/b;->j:Le/b/a/a/q/e/a;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public y1(Le/b/a/a/o/h/a;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/b/a/a/p/h;->G:Le/b/a/a/p/o/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Le/b/a/a/p/o/b;->g:Le/b/a/a/o/i/d;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Le/b/a/a/o/i/d;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    const-string p1, "sendHandler"

    invoke-static {p1}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_2
    throw v2
.end method

.method public z(Landroid/view/Surface;)V
    .locals 7

    iget-object v0, p0, Le/b/a/a/p/h;->K:Le/b/a/a/p/k/b;

    .line 1
    monitor-enter v0

    :try_start_0
    iput-object p1, v0, Le/b/a/a/p/k/b;->i:Landroid/view/Surface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    const-string v4, "RemoteDisplayRenderer setSurface to null"

    aput-object v4, p1, v2

    const-string v2, "CarLife_SDK"

    const-string v4, "tag"

    .line 2
    invoke-static {v2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {p1, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v1, v2, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object p1, v0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Le/b/a/a/p/k/a;->b()V

    const/4 p1, 0x0

    iput-object p1, v0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    iget-object p1, v0, Le/b/a/a/p/k/b;->e:Le/b/a/a/c;

    const v1, 0x1800a

    invoke-interface {p1, v3, v1}, Le/b/a/a/c;->g1(II)V

    goto :goto_2

    :cond_2
    iget-object v4, v0, Le/b/a/a/p/k/b;->g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    if-eqz v4, :cond_4

    iget-object v4, v0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    if-nez v4, :cond_4

    new-instance v4, Le/b/a/a/p/k/a;

    iget-object v5, v0, Le/b/a/a/p/k/b;->e:Le/b/a/a/c;

    iget-object v6, v0, Le/b/a/a/p/k/b;->g:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    invoke-static {v6}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-direct {v4, v5, p1, v6}, Le/b/a/a/p/k/a;-><init>(Le/b/a/a/c;Landroid/view/Surface;Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;)V

    iput-object v4, v0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    iget-object p1, v0, Le/b/a/a/p/k/b;->e:Le/b/a/a/c;

    const v4, 0x18009

    invoke-interface {p1, v3, v4}, Le/b/a/a/c;->g1(II)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string v4, "RemoteDisplayRenderer create decoder delayed"

    aput-object v4, p1, v2

    const-string v2, "CarLife_SDK"

    const-string v4, "tag"

    .line 6
    invoke-static {v2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {p1, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v1, v2, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_4
    iget-object v4, v0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "RemoteDisplayRenderer decoder set new surface"

    aput-object v6, v5, v2

    const-string v2, "CarLife_SDK"

    const-string v6, "tag"

    .line 10
    invoke-static {v2, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "args"

    invoke-static {v5, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v6, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v6, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v1, v2, v3}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-string v1, "surface"

    .line 13
    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v4, Le/b/a/a/p/k/a;->i:Z

    if-nez v1, :cond_7

    iget-object v1, v4, Le/b/a/a/p/k/a;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_7
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
