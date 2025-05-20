
package Paws::Connect::ListTaskTemplates;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTaskTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/task/template');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListTaskTemplatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListTaskTemplates - Arguments for method ListTaskTemplates on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTaskTemplates on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListTaskTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTaskTemplates.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListTaskTemplatesResponse = $connect->ListTaskTemplates(
      InstanceId => 'MyInstanceId',
      MaxResults => 1,                       # OPTIONAL
      Name       => 'MyTaskTemplateName',    # OPTIONAL
      NextToken  => 'MyNextToken',           # OPTIONAL
      Status     => 'ACTIVE',                # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListTaskTemplatesResponse->NextToken;
    my $TaskTemplates = $ListTaskTemplatesResponse->TaskTemplates;

    # Returns a L<Paws::Connect::ListTaskTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListTaskTemplates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.

It is not expected that you set this.



=head2 Name => Str

The name of the task template.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.

It is not expected that you set this because the value returned in the
previous response is always null.



=head2 Status => Str

Marks a template as C<ACTIVE> or C<INACTIVE> for a task to refer to it.
Tasks can only be created from C<ACTIVE> templates. If a template is
marked as C<INACTIVE>, then a task that refers to this template cannot
be created.

Valid values are: C<"ACTIVE">, C<"INACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTaskTemplates in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

