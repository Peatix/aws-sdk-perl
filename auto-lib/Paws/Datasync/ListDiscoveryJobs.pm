
package Paws::Datasync::ListDiscoveryJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StorageSystemArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDiscoveryJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::ListDiscoveryJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListDiscoveryJobs - Arguments for method ListDiscoveryJobs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDiscoveryJobs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method ListDiscoveryJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDiscoveryJobs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $ListDiscoveryJobsResponse = $datasync->ListDiscoveryJobs(
      MaxResults       => 1,                         # OPTIONAL
      NextToken        => 'MyDiscoveryNextToken',    # OPTIONAL
      StorageSystemArn => 'MyStorageSystemArn',      # OPTIONAL
    );

    # Results:
    my $DiscoveryJobs = $ListDiscoveryJobsResponse->DiscoveryJobs;
    my $NextToken     = $ListDiscoveryJobsResponse->NextToken;

    # Returns a L<Paws::Datasync::ListDiscoveryJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/ListDiscoveryJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies how many results you want in the response.



=head2 NextToken => Str

Specifies an opaque string that indicates the position to begin the
next list of results in the response.



=head2 StorageSystemArn => Str

Specifies the Amazon Resource Name (ARN) of an on-premises storage
system. Use this parameter if you only want to list the discovery jobs
that are associated with a specific storage system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDiscoveryJobs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

