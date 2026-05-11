.class public abstract Lg/a/z0/h$a;
.super Lg/a/z0/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/z0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a/z0/c<",
        "Lg/a/z0/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lg/a/z0/h;

.field public c:Lg/a/z0/h;


# direct methods
.method public constructor <init>(Lg/a/z0/h;)V
    .locals 0

    invoke-direct {p0}, Lg/a/z0/c;-><init>()V

    iput-object p1, p0, Lg/a/z0/h$a;->b:Lg/a/z0/h;

    return-void
.end method
