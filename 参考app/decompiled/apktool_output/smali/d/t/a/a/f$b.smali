.class public Ld/t/a/a/f$b;
.super Ld/t/a/a/f$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/t/a/a/f$f;-><init>()V

    return-void
.end method

.method public constructor <init>(Ld/t/a/a/f$b;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/t/a/a/f$f;-><init>(Ld/t/a/a/f$f;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
