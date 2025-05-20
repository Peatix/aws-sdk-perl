
package Paws::S3Control::ListAccessGrantsInstances;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', query_name => 'maxResults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nextToken', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessGrantsInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::ListAccessGrantsInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessGrantsInstances - Arguments for method ListAccessGrantsInstances on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessGrantsInstances on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method ListAccessGrantsInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessGrantsInstances.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $ListAccessGrantsInstancesResult =
      $s3 -control->ListAccessGrantsInstances(
      AccountId  => 'MyAccountId',
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyContinuationToken',    # OPTIONAL
      );

    # Results:
    my $AccessGrantsInstancesList =
      $ListAccessGrantsInstancesResult->AccessGrantsInstancesList;
    my $NextToken = $ListAccessGrantsInstancesResult->NextToken;

    # Returns a L<Paws::S3Control::ListAccessGrantsInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/ListAccessGrantsInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 Access Grants instance.



=head2 MaxResults => Int

The maximum number of access grants that you would like returned in the
C<List Access Grants> response. If the results include the pagination
token C<NextToken>, make another call using the C<NextToken> to
determine if there are more results.



=head2 NextToken => Str

A pagination token to request the next page of results. Pass this value
into a subsequent C<List Access Grants Instances> request in order to
retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessGrantsInstances in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

