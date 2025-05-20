
package Paws::DataZone::CreateDomain;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainExecutionRole', required => 1);
  has DomainVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainVersion');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyIdentifier');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole');
  has SingleSignOn => (is => 'ro', isa => 'Paws::DataZone::SingleSignOn', traits => ['NameInRequest'], request_name => 'singleSignOn');
  has Tags => (is => 'ro', isa => 'Paws::DataZone::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateDomainOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateDomain - Arguments for method CreateDomain on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomain on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomain.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateDomainOutput = $datazone->CreateDomain(
      DomainExecutionRole => 'MyRoleArn',
      Name                => 'MyString',
      ClientToken         => 'MyString',       # OPTIONAL
      Description         => 'MyString',       # OPTIONAL
      DomainVersion       => 'V1',             # OPTIONAL
      KmsKeyIdentifier    => 'MyKmsKeyArn',    # OPTIONAL
      ServiceRole         => 'MyRoleArn',      # OPTIONAL
      SingleSignOn        => {
        IdcInstanceArn => 'MySingleSignOnIdcInstanceArnString',    # OPTIONAL
        Type           => 'IAM_IDC',      # values: IAM_IDC, DISABLED; OPTIONAL
        UserAssignment => 'AUTOMATIC',    # values: AUTOMATIC, MANUAL; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                 = $CreateDomainOutput->Arn;
    my $Description         = $CreateDomainOutput->Description;
    my $DomainExecutionRole = $CreateDomainOutput->DomainExecutionRole;
    my $DomainVersion       = $CreateDomainOutput->DomainVersion;
    my $Id                  = $CreateDomainOutput->Id;
    my $KmsKeyIdentifier    = $CreateDomainOutput->KmsKeyIdentifier;
    my $Name                = $CreateDomainOutput->Name;
    my $PortalUrl           = $CreateDomainOutput->PortalUrl;
    my $RootDomainUnitId    = $CreateDomainOutput->RootDomainUnitId;
    my $ServiceRole         = $CreateDomainOutput->ServiceRole;
    my $SingleSignOn        = $CreateDomainOutput->SingleSignOn;
    my $Status              = $CreateDomainOutput->Status;
    my $Tags                = $CreateDomainOutput->Tags;

    # Returns a L<Paws::DataZone::CreateDomainOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateDomain>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

The description of the Amazon DataZone domain.



=head2 B<REQUIRED> DomainExecutionRole => Str

The domain execution role that is created when an Amazon DataZone
domain is created. The domain execution role is created in the Amazon
Web Services account that houses the Amazon DataZone domain.



=head2 DomainVersion => Str

The version of the domain that is created.

Valid values are: C<"V1">, C<"V2">

=head2 KmsKeyIdentifier => Str

The identifier of the Amazon Web Services Key Management Service (KMS)
key that is used to encrypt the Amazon DataZone domain, metadata, and
reporting data.



=head2 B<REQUIRED> Name => Str

The name of the Amazon DataZone domain.



=head2 ServiceRole => Str

The service role of the domain that is created.



=head2 SingleSignOn => L<Paws::DataZone::SingleSignOn>

The single-sign on configuration of the Amazon DataZone domain.



=head2 Tags => L<Paws::DataZone::Tags>

The tags specified for the Amazon DataZone domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomain in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

