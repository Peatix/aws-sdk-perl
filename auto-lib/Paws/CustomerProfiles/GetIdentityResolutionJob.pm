
package Paws::CustomerProfiles::GetIdentityResolutionJob;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'JobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityResolutionJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/identity-resolution-jobs/{JobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetIdentityResolutionJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetIdentityResolutionJob - Arguments for method GetIdentityResolutionJob on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIdentityResolutionJob on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetIdentityResolutionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIdentityResolutionJob.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetIdentityResolutionJobResponse = $profile->GetIdentityResolutionJob(
      DomainName => 'Myname',
      JobId      => 'Myuuid',

    );

    # Results:
    my $AutoMerging = $GetIdentityResolutionJobResponse->AutoMerging;
    my $DomainName  = $GetIdentityResolutionJobResponse->DomainName;
    my $ExportingLocation =
      $GetIdentityResolutionJobResponse->ExportingLocation;
    my $JobEndTime = $GetIdentityResolutionJobResponse->JobEndTime;
    my $JobExpirationTime =
      $GetIdentityResolutionJobResponse->JobExpirationTime;
    my $JobId         = $GetIdentityResolutionJobResponse->JobId;
    my $JobStartTime  = $GetIdentityResolutionJobResponse->JobStartTime;
    my $JobStats      = $GetIdentityResolutionJobResponse->JobStats;
    my $LastUpdatedAt = $GetIdentityResolutionJobResponse->LastUpdatedAt;
    my $Message       = $GetIdentityResolutionJobResponse->Message;
    my $Status        = $GetIdentityResolutionJobResponse->Status;

 # Returns a L<Paws::CustomerProfiles::GetIdentityResolutionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetIdentityResolutionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> JobId => Str

The unique identifier of the Identity Resolution Job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIdentityResolutionJob in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

