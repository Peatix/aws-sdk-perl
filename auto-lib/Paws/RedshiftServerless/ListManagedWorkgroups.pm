
package Paws::RedshiftServerless::ListManagedWorkgroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedWorkgroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::ListManagedWorkgroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListManagedWorkgroups - Arguments for method ListManagedWorkgroups on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedWorkgroups on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method ListManagedWorkgroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedWorkgroups.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $ListManagedWorkgroupsResponse =
      $redshift -serverless->ListManagedWorkgroups(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      SourceArn  => 'MySourceArn',          # OPTIONAL
      );

    # Results:
    my $ManagedWorkgroups = $ListManagedWorkgroupsResponse->ManagedWorkgroups;
    my $NextToken         = $ListManagedWorkgroupsResponse->NextToken;

  # Returns a L<Paws::RedshiftServerless::ListManagedWorkgroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/ListManagedWorkgroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use nextToken to display the next page of results.



=head2 NextToken => Str

If your initial ListManagedWorkgroups operation returns a nextToken,
you can include the returned nextToken in following
ListManagedWorkgroups operations, which returns results in the next
page.



=head2 SourceArn => Str

The Amazon Resource Name (ARN) for the managed workgroup in the AWS
Glue Data Catalog.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedWorkgroups in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

