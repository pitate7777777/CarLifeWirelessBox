.class public final Lf/n/c$a;
.super Lf/n/c;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lf/m/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/n/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget-object v0, Lf/n/c;->e:Lf/n/c;

    .line 2
    invoke-virtual {v0}, Lf/n/c;->a()I

    move-result v0

    return v0
.end method
