
package Paws::Panorama::ListPackageImportJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackageImportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/import-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::ListPackageImportJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListPackageImportJobs - Arguments for method ListPackageImportJobs on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackageImportJobs on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method ListPackageImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackageImportJobs.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $ListPackageImportJobsResponse = $panorama->ListPackageImportJobs(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListPackageImportJobsResponse->NextToken;
    my $PackageImportJobs = $ListPackageImportJobsResponse->PackageImportJobs;

    # Returns a L<Paws::Panorama::ListPackageImportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/ListPackageImportJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of package import jobs to return in one page of
results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackageImportJobs in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

