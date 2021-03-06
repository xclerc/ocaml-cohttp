(*{{{ Copyright (c) 2012 Anil Madhavapeddy <anil@recoil.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
  }}}*)

module Request = struct
  include Cohttp.Request
  include (Make(Cohttp_lwt_unix_nossl.IO)
           : module type of Make(Cohttp_lwt_unix_nossl.IO) with type t := t)
end

module Response = struct
  include Cohttp.Response
  include (Make(Cohttp_lwt_unix_nossl.IO)
           : module type of Make(Cohttp_lwt_unix_nossl.IO) with type t := t)
end

module Client = Client
module Server = Cohttp_lwt_unix_nossl.Server
module Debug = Cohttp_lwt_unix_nossl.Debug
module Net = Net
module IO = Cohttp_lwt_unix_nossl.IO
