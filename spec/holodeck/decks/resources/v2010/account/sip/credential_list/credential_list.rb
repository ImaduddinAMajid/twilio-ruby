class V2010HolodeckResource < HolodeckResource
  require './spec/holodeck/decks/resources/v2010/account/sip/credential_list/credential/credential.rb'

  class CredentialListInstanceHolodeckResource < HolodeckResource
    @sub_resources = {
        credentials: V2010HolodeckResource::CredentialInstanceHolodeckResource,
    }
    @holograms = [
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_200_empty.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_fetch_200.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb/SIP/CredentialLists.json",
            auth: ["ACbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_200_partial.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_create_200.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_update_200.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 204,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_delete_204.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists/CLllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_delete_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists/CLllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_fetch_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_create_401.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists/CLllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_update_401.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists/CLkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_delete_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists/CLkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_fetch_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_create_404.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists/CLkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_update_404.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists/CLmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_delete_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists/CLmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_fetch_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_create_500.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists/CLmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_update_500.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
    ]
  end
end

class V2010HolodeckResource < HolodeckResource
  require './spec/holodeck/decks/resources/v2010/account/sip/credential_list/credential/credential.rb'

  class CredentialListInstanceHolodeckResource < HolodeckResource
    @sub_resources = {
        credentials: V2010HolodeckResource::CredentialInstanceHolodeckResource,
    }
    @holograms = [
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_200_empty.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_fetch_200.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb/SIP/CredentialLists.json",
            auth: ["ACbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_200_partial.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_create_200.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 200,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_update_200.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/CredentialLists/CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
            auth: ["ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "AUTHTOKEN"],
            status_code: 204,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_delete_204.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists/CLllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_delete_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists/CLllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_fetch_401.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_create_401.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACllllllllllllllllllllllllllllllll/SIP/CredentialLists/CLllllllllllllllllllllllllllllllll.json",
            auth: ["ACllllllllllllllllllllllllllllllll", "AUTHTOKEN"],
            status_code: 401,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_update_401.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists/CLkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_delete_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists/CLkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_fetch_404.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_create_404.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/SIP/CredentialLists/CLkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk.json",
            auth: ["ACkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "AUTHTOKEN"],
            status_code: 404,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_update_404.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "DELETE",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists/CLmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_delete_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_read_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "GET",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists/CLmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_fetch_500.json"),
            query_params: '{}',
            form_params: '{}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_create_500.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
        Hologram.new(
            method: "POST",
            url: "https://api.twilio.com/2010-04-01/Accounts/ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm/SIP/CredentialLists/CLmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm.json",
            auth: ["ACmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm", "AUTHTOKEN"],
            status_code: 500,
            content_file: File.join(File.dirname(__FILE__), "sip_credential_list_update_500.json"),
            query_params: '{}',
            form_params: '{"FriendlyName": "friendly_name"}',
            headers: HolodeckResource::DEFAULT_HEADERS
        ),
    ]
  end
end