.class public interface abstract Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto$CarlifeTouchEventAllDeviceOrBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchEventAllDeviceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarlifeTouchEventAllDeviceOrBuilder"
.end annotation


# virtual methods
.method public abstract getCnt()I
.end method

.method public abstract synthetic getDefaultInstanceForType()Le/c/b/x;
.end method

.method public abstract getDevices(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
.end method

.method public abstract getDevicesCount()I
.end method

.method public abstract getDevicesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasCnt()Z
.end method

.method public abstract hasVersion()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
