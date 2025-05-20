
package Paws::AppSync::EvaluateMappingTemplate;
  use Moose;
  has Context => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'context', required => 1);
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateMappingTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/dataplane-evaluatetemplate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::EvaluateMappingTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::EvaluateMappingTemplate - Arguments for method EvaluateMappingTemplate on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EvaluateMappingTemplate on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method EvaluateMappingTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EvaluateMappingTemplate.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $EvaluateMappingTemplateResponse = $appsync->EvaluateMappingTemplate(
      Context  => 'MyContext',
      Template => 'MyTemplate',

    );

    # Results:
    my $Error            = $EvaluateMappingTemplateResponse->Error;
    my $EvaluationResult = $EvaluateMappingTemplateResponse->EvaluationResult;
    my $Logs             = $EvaluateMappingTemplateResponse->Logs;
    my $OutErrors        = $EvaluateMappingTemplateResponse->OutErrors;
    my $Stash            = $EvaluateMappingTemplateResponse->Stash;

    # Returns a L<Paws::AppSync::EvaluateMappingTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/EvaluateMappingTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Context => Str

The map that holds all of the contextual information for your resolver
invocation. A C<context> is required for this action.



=head2 B<REQUIRED> Template => Str

The mapping template; this can be a request or response template. A
C<template> is required for this action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EvaluateMappingTemplate in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

