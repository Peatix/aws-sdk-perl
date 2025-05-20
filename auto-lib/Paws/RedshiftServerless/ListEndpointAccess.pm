
package Paws::RedshiftServerless::ListEndpointAccess;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId' );
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpointAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::ListEndpointAccessResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListEndpointAccess - Arguments for method ListEndpointAccess on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEndpointAccess on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method ListEndpointAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEndpointAccess.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $ListEndpointAccessResponse = $redshift -serverless->ListEndpointAccess(
      MaxResults    => 1,                   # OPTIONAL
      NextToken     => 'MyString',          # OPTIONAL
      OwnerAccount  => 'MyOwnerAccount',    # OPTIONAL
      VpcId         => 'MyString',          # OPTIONAL
      WorkgroupName => 'MyString',          # OPTIONAL
    );

    # Results:
    my $Endpoints = $ListEndpointAccessResponse->Endpoints;
    my $NextToken = $ListEndpointAccessResponse->NextToken;

    # Returns a L<Paws::RedshiftServerless::ListEndpointAccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/ListEndpointAccess>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to display the next page of results.



=head2 NextToken => Str

If your initial C<ListEndpointAccess> operation returns a C<nextToken>,
you can include the returned C<nextToken> in following
C<ListEndpointAccess> operations, which returns results in the next
page.



=head2 OwnerAccount => Str

The owner Amazon Web Services account for the Amazon Redshift
Serverless workgroup.



=head2 VpcId => Str

The unique identifier of the virtual private cloud with access to
Amazon Redshift Serverless.



=head2 WorkgroupName => Str

The name of the workgroup associated with the VPC endpoint to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEndpointAccess in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

