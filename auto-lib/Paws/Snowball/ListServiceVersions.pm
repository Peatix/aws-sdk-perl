
package Paws::Snowball::ListServiceVersions;
  use Moose;
  has DependentServices => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::DependentService]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::ListServiceVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListServiceVersions - Arguments for method ListServiceVersions on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceVersions on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method ListServiceVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceVersions.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    my $ListServiceVersionsResult = $snowball->ListServiceVersions(
      ServiceName       => 'KUBERNETES',
      DependentServices => [
        {
          ServiceName    => 'KUBERNETES',    # values: KUBERNETES, EKS_ANYWHERE
          ServiceVersion => {
            Version => 'MyString',           # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $DependentServices = $ListServiceVersionsResult->DependentServices;
    my $NextToken         = $ListServiceVersionsResult->NextToken;
    my $ServiceName       = $ListServiceVersionsResult->ServiceName;
    my $ServiceVersions   = $ListServiceVersionsResult->ServiceVersions;

    # Returns a L<Paws::Snowball::ListServiceVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/ListServiceVersions>

=head1 ATTRIBUTES


=head2 DependentServices => ArrayRef[L<Paws::Snowball::DependentService>]

A list of names and versions of dependant services of the requested
service.



=head2 MaxResults => Int

The maximum number of C<ListServiceVersions> objects to return.



=head2 NextToken => Str

Because HTTP requests are stateless, this is the starting point for the
next list of returned C<ListServiceVersionsRequest> versions.



=head2 B<REQUIRED> ServiceName => Str

The name of the service for which you're requesting supported versions.

Valid values are: C<"KUBERNETES">, C<"EKS_ANYWHERE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceVersions in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

