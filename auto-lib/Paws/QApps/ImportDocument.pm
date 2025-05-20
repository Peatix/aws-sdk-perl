
package Paws::QApps::ImportDocument;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has CardId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cardId', required => 1);
  has FileContentsBase64 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileContentsBase64', required => 1);
  has FileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileName', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has Scope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scope', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportDocument');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps.importDocument');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::ImportDocumentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ImportDocument - Arguments for method ImportDocument on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportDocument on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method ImportDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportDocument.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $ImportDocumentOutput = $data . qapps->ImportDocument(
      AppId              => 'MyUUID',
      CardId             => 'MyUUID',
      FileContentsBase64 => 'MyString',
      FileName           => 'MyFilename',
      InstanceId         => 'MyInstanceId',
      Scope              => 'APPLICATION',
      SessionId          => 'MyUUID',         # OPTIONAL
    );

    # Results:
    my $FileId = $ImportDocumentOutput->FileId;

    # Returns a L<Paws::QApps::ImportDocumentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/ImportDocument>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique identifier of the Q App the file is associated with.



=head2 B<REQUIRED> CardId => Str

The unique identifier of the card the file is associated with.



=head2 B<REQUIRED> FileContentsBase64 => Str

The base64-encoded contents of the file to upload.



=head2 B<REQUIRED> FileName => Str

The name of the file being uploaded.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 B<REQUIRED> Scope => Str

Whether the file is associated with a Q App definition or a specific Q
App session.

Valid values are: C<"APPLICATION">, C<"SESSION">

=head2 SessionId => Str

The unique identifier of the Q App session the file is associated with,
if applicable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportDocument in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

