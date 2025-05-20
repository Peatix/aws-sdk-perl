
package Paws::Neptunedata::GetLoaderJobStatus;
  use Moose;
  has Details => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'details');
  has Errors => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'errors');
  has ErrorsPerPage => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'errorsPerPage');
  has LoadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'loadId', required => 1);
  has Page => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'page');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLoaderJobStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/loader/{loadId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::GetLoaderJobStatusOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetLoaderJobStatus - Arguments for method GetLoaderJobStatus on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLoaderJobStatus on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method GetLoaderJobStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLoaderJobStatus.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $GetLoaderJobStatusOutput = $neptune -db->GetLoaderJobStatus(
      LoadId        => 'MyString',
      Details       => 1,            # OPTIONAL
      Errors        => 1,            # OPTIONAL
      ErrorsPerPage => 1,            # OPTIONAL
      Page          => 1,            # OPTIONAL
    );

    # Results:
    my $Payload = $GetLoaderJobStatusOutput->Payload;
    my $Status  = $GetLoaderJobStatusOutput->Status;

    # Returns a L<Paws::Neptunedata::GetLoaderJobStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/GetLoaderJobStatus>

=head1 ATTRIBUTES


=head2 Details => Bool

Flag indicating whether or not to include details beyond the overall
status (C<TRUE> or C<FALSE>; the default is C<FALSE>).



=head2 Errors => Bool

Flag indicating whether or not to include a list of errors encountered
(C<TRUE> or C<FALSE>; the default is C<FALSE>).

The list of errors is paged. The C<page> and C<errorsPerPage>
parameters allow you to page through all the errors.



=head2 ErrorsPerPage => Int

The number of errors returned in each page (a positive integer; the
default is C<10>). Only valid when the C<errors> parameter set to
C<TRUE>.



=head2 B<REQUIRED> LoadId => Str

The load ID of the load job to get the status of.



=head2 Page => Int

The error page number (a positive integer; the default is C<1>). Only
valid when the C<errors> parameter is set to C<TRUE>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLoaderJobStatus in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

