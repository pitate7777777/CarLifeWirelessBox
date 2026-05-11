.class public final Le/b/a/a/p/m/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/i/b;


# instance fields
.field public final e:Le/b/a/a/o/h/f/a;

.field public final f:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Le/b/a/a/o/h/f/a;Ljava/security/PublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/m/a/f;->e:Le/b/a/a/o/h/f/a;

    iput-object p2, p0, Le/b/a/a/p/m/a/f;->f:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const-string v3, "args"

    const-string v4, "tag"

    const-string v5, "CarLife_SDK"

    const/4 v6, 0x0

    const-string v7, "<this>"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const p2, 0x1806f

    .line 1
    invoke-interface {p1, v10, p2}, Le/b/a/a/c;->g1(II)V

    iget-object p2, p0, Le/b/a/a/p/m/a/f;->e:Le/b/a/a/o/h/f/a;

    if-eqz p2, :cond_f

    iget-object p2, p0, Le/b/a/a/p/m/a/f;->f:Ljava/security/PublicKey;

    if-eqz p2, :cond_f

    invoke-interface {p1, v10}, Le/b/a/a/c;->M(Z)V

    goto/16 :goto_7

    .line 2
    :sswitch_1
    iget-object v0, p0, Le/b/a/a/p/m/a/f;->e:Le/b/a/a/o/h/f/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/b/a/a/p/m/a/f;->f:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    if-eqz v0, :cond_1

    move-object v6, p2

    check-cast v6, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    :cond_1
    if-nez v6, :cond_2

    goto/16 :goto_7

    :cond_2
    :try_start_0
    iget-object p2, p0, Le/b/a/a/p/m/a/f;->e:Le/b/a/a/o/h/f/a;

    invoke-virtual {v6}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->getAesKey()Ljava/lang/String;

    move-result-object v0

    const-string v6, "it.aesKey"

    invoke-static {v0, v6}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Le/b/a/a/o/h/f/a;->a(Ljava/lang/String;)V

    sget-object p2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v0, 0x1806d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v10, v0, v9, v8}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object p2

    invoke-interface {p1, p2}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "handleAESKeyRequest exception: "

    aput-object v0, p2, v9

    aput-object p1, p2, v10

    .line 3
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object p1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p1, :cond_3

    goto/16 :goto_7

    .line 5
    :cond_3
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, v5, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_4
    :goto_0
    new-array p1, v10, [Ljava/lang/Object;

    const-string p2, "can not handle aes key when CONTENT_ENCRYPTION not enabled"

    aput-object p2, p1, v9

    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p2, :cond_5

    goto/16 :goto_7

    .line 7
    :cond_5
    invoke-static {p1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, v5, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 8
    :sswitch_2
    iget-object p2, p0, Le/b/a/a/p/m/a/f;->e:Le/b/a/a/o/h/f/a;

    if-eqz p2, :cond_7

    iget-object p2, p0, Le/b/a/a/p/m/a/f;->f:Ljava/security/PublicKey;

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v1, 0x1806b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v10, v1, v9, v8}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;->setRsaPublicKey(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;

    move-result-object p2

    invoke-virtual {p2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-interface {p1, v0}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    goto/16 :goto_7

    :cond_7
    :goto_1
    new-array p1, v10, [Ljava/lang/Object;

    const-string p2, "can not request public key when CONTENT_ENCRYPTION not enabled"

    aput-object p2, p1, v9

    .line 9
    invoke-static {v5, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p2, :cond_8

    goto/16 :goto_7

    .line 11
    :cond_8
    invoke-static {p1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, v5, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 12
    :sswitch_3
    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    goto :goto_2

    :cond_9
    move-object p2, v6

    :goto_2
    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getFeatureConfigList()Ljava/util/List;

    move-result-object v6

    :goto_3
    if-nez v6, :cond_b

    .line 13
    sget-object v6, Lf/i/c;->e:Lf/i/c;

    .line 14
    :cond_b
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feature.key"

    invoke-static {v1, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;->getValue()I

    move-result v0

    invoke-interface {p1, v1, v0, v9}, Le/b/a/a/c;->f1(Ljava/lang/String;IZ)V

    goto :goto_4

    :cond_c
    sget-object p2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v0, 0x18052

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v10, v0, v9, v8}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object p2

    invoke-interface {p1}, Le/b/a/a/c;->O0()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-static {v0, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->addFeatureConfig(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    goto :goto_5

    :cond_d
    invoke-virtual {v1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->getFeatureConfigCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    const-string v0, "builder"

    invoke-static {v1, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "CONFIG_BLUETOOTH_AUDIO"

    invoke-interface {p1, v2, v0}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setHuBtAudioSupport(Z)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    move-result-object v0

    const-string v1, ""

    const-string v2, "CONFIG_HU_BT_NAME"

    invoke-interface {p1, v2, v1}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setHuBtName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    move-result-object v0

    const-string v2, "CONFIG_HU_BT_MAC"

    invoke-interface {p1, v2, v1}, Le/b/a/a/c;->z0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setHuBtMAC(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-interface {p1, p2}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    goto :goto_7

    :sswitch_4
    const p2, 0x18044

    .line 17
    invoke-interface {p1, v10, p2}, Le/b/a/a/c;->g1(II)V

    goto :goto_7

    .line 18
    :sswitch_5
    sget-object p2, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v0, 0x18043

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v10, v0, v9, v8}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object p2

    invoke-interface {p1}, Le/b/a/a/c;->m()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-static {v0, v7}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;->addSubscribemobileCarLifeInfo(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;->getSubscribemobileCarLifeInfoCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;->setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;

    invoke-virtual {v1}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 20
    invoke-virtual {p2, v0}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-interface {p1, p2}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    :cond_f
    :goto_7
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x10043 -> :sswitch_5
        0x10044 -> :sswitch_4
        0x10051 -> :sswitch_3
        0x1006a -> :sswitch_2
        0x1006c -> :sswitch_1
        0x1006e -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/o/i/a;->b(Le/b/a/a/o/i/b;Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result p1

    return p1
.end method

.method public synthetic onConnectionAttached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->a(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->b(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/h;->c(Le/b/a/a/i;Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic onConnectionDetached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->d(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionEstablished(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->e(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionReattached(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->f(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method

.method public synthetic onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Le/b/a/a/h;->g(Le/b/a/a/i;Le/b/a/a/c;)V

    return-void
.end method
