
package Paws::PcaConnectorAd::CreateDirectoryRegistration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PcaConnectorAd::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDirectoryRegistration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/directoryRegistrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PcaConnectorAd::CreateDirectoryRegistrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::CreateDirectoryRegistration - Arguments for method CreateDirectoryRegistration on L<Paws::PcaConnectorAd>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDirectoryRegistration on the
L<PcaConnectorAd|Paws::PcaConnectorAd> service. Use the attributes of this class
as arguments to method CreateDirectoryRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDirectoryRegistration.

=head1 SYNOPSIS

    my $pca-connector-ad = Paws->service('PcaConnectorAd');
    my $CreateDirectoryRegistrationResponse =
      $pca -connector-ad->CreateDirectoryRegistration(
      DirectoryId => 'MyDirectoryId',
      ClientToken => 'MyClientToken',                  # OPTIONAL
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
      );

    # Results:
    my $DirectoryRegistrationArn =
      $CreateDirectoryRegistrationResponse->DirectoryRegistrationArn;

# Returns a L<Paws::PcaConnectorAd::CreateDirectoryRegistrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad/CreateDirectoryRegistration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Idempotency token.



=head2 B<REQUIRED> DirectoryId => Str

The identifier of the Active Directory.



=head2 Tags => L<Paws::PcaConnectorAd::Tags>

Metadata assigned to a directory registration consisting of a key-value
pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDirectoryRegistration in L<Paws::PcaConnectorAd>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

