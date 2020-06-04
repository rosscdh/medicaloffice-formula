def test_file_exists(host):
    medicaloffice = host.file('/medicaloffice.yml')
    assert medicaloffice.exists
    assert medicaloffice.contains('your')

# def test_medicaloffice_is_installed(host):
#     medicaloffice = host.package('medicaloffice')
#     assert medicaloffice.is_installed
#
#
# def test_user_and_group_exist(host):
#     user = host.user('medicaloffice')
#     assert user.group == 'medicaloffice'
#     assert user.home == '/var/lib/medicaloffice'
#
#
# def test_service_is_running_and_enabled(host):
#     medicaloffice = host.service('medicaloffice')
#     assert medicaloffice.is_enabled
#     assert medicaloffice.is_running
