
package Paws::Lambda::ListFunctionUrlConfigs;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker');
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFunctionUrlConfigs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-10-31/functions/{FunctionName}/urls');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListFunctionUrlConfigsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListFunctionUrlConfigs - Arguments for method ListFunctionUrlConfigs on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFunctionUrlConfigs on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method ListFunctionUrlConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFunctionUrlConfigs.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $ListFunctionUrlConfigsResponse = $lambda->ListFunctionUrlConfigs(
      FunctionName => 'MyFunctionName',
      Marker       => 'MyString',         # OPTIONAL
      MaxItems     => 1,                  # OPTIONAL
    );

    # Results:
    my $FunctionUrlConfigs =
      $ListFunctionUrlConfigsResponse->FunctionUrlConfigs;
    my $NextMarker = $ListFunctionUrlConfigsResponse->NextMarker;

    # Returns a L<Paws::Lambda::ListFunctionUrlConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/ListFunctionUrlConfigs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

The name or ARN of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> E<ndash> C<my-function>.

=item *

B<Function ARN> E<ndash>
C<arn:aws:lambda:us-west-2:123456789012:function:my-function>.

=item *

B<Partial ARN> E<ndash> C<123456789012:function:my-function>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.



=head2 Marker => Str

Specify the pagination token that's returned by a previous request to
retrieve the next page of results.



=head2 MaxItems => Int

The maximum number of function URLs to return in the response. Note
that C<ListFunctionUrlConfigs> returns a maximum of 50 items in each
response, even if you set the number higher.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFunctionUrlConfigs in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

