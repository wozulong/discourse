# frozen_string_literal: true

Fabricator(:incoming_email) do
  message_id "12345@example.com"
  subject "Hello world"
  from_address "foo@example.com"
  to_addresses "someone@else.com"
  imap_sync false
  created_via 0

  raw <<~EMAIL
    Return-Path: <foo@example.com>
    From: Foo <foo@example.com>
    To: someone@else.com
    Subject: Hello world
    Date: Fri, 15 Jan 2016 00:12:43 +0100
    Message-ID: <12345@example.com>
    MIME-Version: 1.0
    Content-Type: text/plain; charset=UTF-8
    Content-Transfer-Encoding: quoted-printable

    The body contains "Hello world" too.
  EMAIL
end
