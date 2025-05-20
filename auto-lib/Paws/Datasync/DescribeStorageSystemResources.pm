
package Paws::Datasync::DescribeStorageSystemResources;
  use Moose;
  has DiscoveryJobArn => (is => 'ro', isa => 'Str', required => 1);
  has Filter => (is => 'ro', isa => 'Paws::Datasync::ResourceFilters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorageSystemResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeStorageSystemResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeStorageSystemResources - Arguments for method DescribeStorageSystemResources on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStorageSystemResources on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeStorageSystemResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStorageSystemResources.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeStorageSystemResourcesResponse =
      $datasync->DescribeStorageSystemResources(
      DiscoveryJobArn => 'MyDiscoveryJobArn',
      ResourceType    => 'SVM',
      Filter          => {
        'SVM' => [
          'MyPtolemyString', ...    # max: 1024
        ],    # key: values: SVM
      },    # OPTIONAL
      MaxResults  => 1,                          # OPTIONAL
      NextToken   => 'MyDiscoveryNextToken',     # OPTIONAL
      ResourceIds => [ 'MyResourceId', ... ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeStorageSystemResourcesResponse->NextToken;
    my $ResourceDetails =
      $DescribeStorageSystemResourcesResponse->ResourceDetails;

   # Returns a L<Paws::Datasync::DescribeStorageSystemResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeStorageSystemResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiscoveryJobArn => Str

Specifies the Amazon Resource Name (ARN) of the discovery job that's
collecting data from your on-premises storage system.



=head2 Filter => L<Paws::Datasync::ResourceFilters>

Filters the storage system resources that you want returned. For
example, this might be volumes associated with a specific storage
virtual machine (SVM).



=head2 MaxResults => Int

Specifies the maximum number of storage system resources that you want
to list in a response.



=head2 NextToken => Str

Specifies an opaque string that indicates the position to begin the
next list of results in the response.



=head2 ResourceIds => ArrayRef[Str|Undef]

Specifies the universally unique identifiers (UUIDs) of the storage
system resources that you want information about. You can't use this
parameter in combination with the C<Filter> parameter.



=head2 B<REQUIRED> ResourceType => Str

Specifies what kind of storage system resources that you want
information about.

Valid values are: C<"SVM">, C<"VOLUME">, C<"CLUSTER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStorageSystemResources in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

